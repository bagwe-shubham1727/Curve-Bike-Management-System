CREATE OR REPLACE PACKAGE bike_rental_mgmt_pkg AS

  -- Schedules bike return and updates availability
  FUNCTION update_bike_availability (
    p_bike_id         IN NUMBER,
    p_start_dock_id   IN NUMBER,
    p_end_dock_id     IN NUMBER,
    p_start_datetime  IN DATE,
    p_end_datetime    IN DATE
  ) RETURN VARCHAR2;

  -- Executes bike return (called by DBMS_SCHEDULER)
  PROCEDURE return_bike_proc (
    p_bike_id       IN NUMBER,
    p_end_dock_id   IN NUMBER
  );

  -- Places a full rental order
  PROCEDURE place_rental_order (
    p_customer_id     IN NUMBER,
    p_bike_id         IN NUMBER,
    p_transaction_id  IN NUMBER,
    p_start_dock_id   IN NUMBER,
    p_end_dock_id     IN NUMBER,
    p_start_datetime  IN DATE,
    p_end_datetime    IN DATE,
    po_rental_id      OUT NUMBER
  );

END bike_rental_mgmt_pkg;
/


CREATE OR REPLACE PACKAGE BODY bike_rental_mgmt_pkg AS

  --  PROCEDURE: Return bike to end dock
    PROCEDURE return_bike_proc (
        p_bike_id     IN NUMBER,
        p_end_dock_id IN NUMBER
    ) IS
        v_capacity NUMBER;
        v_available NUMBER;
    BEGIN
        -- Check current capacity and availability
        SELECT bike_capacity, bike_available INTO v_capacity, v_available
        FROM docks
        WHERE dock_id = p_end_dock_id;

        -- If adding the bike exceeds capacity, increase the capacity by 1
        IF v_available + 1 > v_capacity THEN
            UPDATE docks
            SET bike_capacity = bike_capacity + 1
            WHERE dock_id = p_end_dock_id;
        END IF;

        UPDATE docks
        SET bike_available = bike_available + 1
        WHERE dock_id = p_end_dock_id;

        UPDATE bike
        SET
            dock_id = p_end_dock_id,
            current_location = (
                SELECT dock_location
                FROM docks
                WHERE dock_id = p_end_dock_id
            ),
            rental_status = 'N'
        WHERE bike_id = p_bike_id;

        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            dbms_output.put_line(' Error in return_bike_proc: ' || sqlerrm);
    END return_bike_proc;

  --  FUNCTION: Schedule return and adjust availability
    FUNCTION update_bike_availability (
        p_bike_id        IN NUMBER,
        p_start_dock_id  IN NUMBER,
        p_end_dock_id    IN NUMBER,
        p_start_datetime IN DATE,
        p_end_datetime   IN DATE
    ) RETURN VARCHAR2 IS
        v_start_avail NUMBER;
        v_dock_id     NUMBER;
        v_job_name    VARCHAR2(30);
    BEGIN
        SELECT dock_id INTO v_dock_id FROM bike WHERE bike_id = p_bike_id;

        IF v_dock_id != p_start_dock_id THEN
            RETURN ' Bike is not currently at the specified start dock.';
        END IF;

        SELECT bike_available INTO v_start_avail FROM docks WHERE dock_id = p_start_dock_id;

        IF v_start_avail <= 0 THEN
            RETURN ' No bikes available at the start dock.';
        END IF;

        UPDATE docks SET bike_available = bike_available - 1 WHERE dock_id = p_start_dock_id;

        v_job_name := 'RETURN_BIKE_' || to_char(p_bike_id) || '_' || to_char(sysdate, 'HH24MISS');

        dbms_scheduler.create_job(
            job_name            => v_job_name,
            job_type            => 'STORED_PROCEDURE',
            job_action          => 'BIKE_RENTAL_MGMT_PKG.RETURN_BIKE_PROC',
            number_of_arguments => 2,
            start_date          => p_end_datetime,
            enabled             => FALSE
        );

        dbms_scheduler.set_job_argument_value(v_job_name, 1, to_char(p_bike_id));
        dbms_scheduler.set_job_argument_value(v_job_name, 2, to_char(p_end_dock_id));
        dbms_scheduler.enable(v_job_name);

        COMMIT;
        RETURN ' Bike rented and return scheduled successfully.';
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN ' Error occurred: ' || sqlerrm;
    END update_bike_availability;

  --  PROCEDURE: Place a rental order
    PROCEDURE place_rental_order (
        p_customer_id    IN NUMBER,
        p_bike_id        IN NUMBER,
        p_transaction_id IN NUMBER,
        p_start_dock_id  IN NUMBER,
        p_end_dock_id    IN NUMBER,
        p_start_datetime IN DATE,
        p_end_datetime   IN DATE,
        po_rental_id     OUT NUMBER
    ) IS
        v_rental_status CHAR(1);
    BEGIN
        -- Check rental status of the bike
        SELECT rental_status INTO v_rental_status
        FROM bike
        WHERE bike_id = p_bike_id;

        IF v_rental_status = 'Y' THEN
            RAISE_APPLICATION_ERROR(-20010, 'The selected bike is already rented.');
        END IF;
        
        IF v_rental_status = 'M' THEN
            RAISE_APPLICATION_ERROR(-20015, 'The selected bike is in maintenance.');
        END IF;

        -- Update bike rental status to Y before processing rental
        UPDATE bike
        SET rental_status = 'Y'
        WHERE bike_id = p_bike_id;

        INSERT INTO rental (
            customer_id,
            bike_id,
            transaction_id,
            start_dock_id,
            end_dock_id,
            start_date_time,
            end_date_time
        ) VALUES (
            p_customer_id,
            p_bike_id,
            p_transaction_id,
            p_start_dock_id,
            p_end_dock_id,
            p_start_datetime,
            p_end_datetime
        ) RETURNING rental_id INTO po_rental_id;

        DECLARE
            v_msg VARCHAR2(200);
        BEGIN
            v_msg := update_bike_availability(
                p_bike_id, p_start_dock_id, p_end_dock_id,
                p_start_datetime, p_end_datetime
            );
            dbms_output.put_line(v_msg);
        END;

        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            po_rental_id := -1;
            dbms_output.put_line(' Rental failed: ' || sqlerrm);
    END place_rental_order;

END bike_rental_mgmt_pkg;
/
