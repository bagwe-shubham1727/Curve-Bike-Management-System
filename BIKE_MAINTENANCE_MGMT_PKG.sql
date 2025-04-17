CREATE OR REPLACE PACKAGE bike_maintenance_mgmt_pkg AS

  -- Procedure to submit a bike for maintenance
  PROCEDURE submit_bike_for_maintenance (
    p_bike_id          IN NUMBER,
    p_employee_id      IN NUMBER,
    p_description      IN VARCHAR2,
    p_repair_cost      IN NUMBER
  );

  -- Procedure to mark maintenance complete and return bike to dock
  PROCEDURE complete_bike_maintenance (
    p_bike_id     IN NUMBER,
    p_dock_id     IN NUMBER,
    p_description IN VARCHAR2,
    p_repair_cost IN NUMBER,
    p_employee_id IN NUMBER
  );

END bike_maintenance_mgmt_pkg;
/


CREATE OR REPLACE PACKAGE BODY bike_maintenance_mgmt_pkg AS

  PROCEDURE submit_bike_for_maintenance (
    p_bike_id          IN NUMBER,
    p_employee_id      IN NUMBER,
    p_description      IN VARCHAR2,
    p_repair_cost      IN NUMBER
  ) IS
    v_dock_id        NUMBER;
    v_rental_status  CHAR(1);
    v_designation    VARCHAR2(50);
  BEGIN
    -- Check employee designation
    SELECT designation INTO v_designation
    FROM employee
    WHERE employee_id = p_employee_id;

    IF v_designation != 'Quality Control Inspector' THEN
      RAISE_APPLICATION_ERROR(-20021, 'Only Quality Control Inspectors can submit maintenance.');
    END IF;

    -- Get rental status and dock ID of the bike
    SELECT rental_status, dock_id INTO v_rental_status, v_dock_id
    FROM bike
    WHERE bike_id = p_bike_id;

    IF v_rental_status = 'Y' THEN
      RAISE_APPLICATION_ERROR(-20020, 'Cannot submit a rented bike for maintenance.');
    END IF;
    
    IF v_rental_status = 'M' THEN
      RAISE_APPLICATION_ERROR(-20024, 'Cannot submit a bike which is already in maintenance.');
    END IF;

    -- Remove the bike from dock and mark as unavailable for rental
    UPDATE docks
    SET bike_available = bike_available - 1
    WHERE dock_id = v_dock_id;

    UPDATE bike
    SET rental_status = 'M',
        current_location = 'Under Maintenance'
    WHERE bike_id = p_bike_id;

    -- Insert into Maintenance table
    INSERT INTO maintenance (
      maintenance_description,
      repair_cost,
      bike_id,
      employee_id
    ) VALUES (
      p_description,
      p_repair_cost,
      p_bike_id,
      p_employee_id
    );

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Bike submitted for maintenance successfully.');

  EXCEPTION
    WHEN OTHERS THEN
      ROLLBACK;
      DBMS_OUTPUT.PUT_LINE('Failed to submit bike for maintenance: ' || SQLERRM);
  END submit_bike_for_maintenance;


  PROCEDURE complete_bike_maintenance (
    p_bike_id     IN NUMBER,
    p_dock_id     IN NUMBER,
    p_description IN VARCHAR2,
    p_repair_cost IN NUMBER,
    p_employee_id IN NUMBER
  ) IS
    v_capacity NUMBER;
    v_available NUMBER;
    v_designation VARCHAR2(50);
  BEGIN
    -- Check employee designation
    SELECT designation INTO v_designation
    FROM employee
    WHERE employee_id = p_employee_id;

    IF v_designation != 'Quality Control Inspector' THEN
      RAISE_APPLICATION_ERROR(-20022, 'Only Quality Control Inspectors can complete maintenance.');
    END IF;

    -- Check capacity and increment if needed
    SELECT bike_capacity, bike_available INTO v_capacity, v_available
    FROM docks
    WHERE dock_id = p_dock_id;

    IF v_available + 1 > v_capacity THEN
      UPDATE docks
      SET bike_capacity = bike_capacity + 1
      WHERE dock_id = p_dock_id;
    END IF;

    -- Update dock bike availability
    UPDATE docks
    SET bike_available = bike_available + 1
    WHERE dock_id = p_dock_id;

    -- Update bike record
    UPDATE bike
    SET rental_status = 'N',
        dock_id = p_dock_id,
        current_location = (SELECT dock_location FROM docks WHERE dock_id = p_dock_id)
    WHERE bike_id = p_bike_id;

    -- Update latest maintenance record
    UPDATE maintenance
    SET maintenance_description = p_description,
        repair_cost = p_repair_cost,
        date_time = SYSDATE
    WHERE maintenance_id = (
      SELECT MAX(maintenance_id) FROM maintenance WHERE bike_id = p_bike_id
    );

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Bike maintenance completed and returned to dock successfully.');

  EXCEPTION
    WHEN OTHERS THEN
      ROLLBACK;
      DBMS_OUTPUT.PUT_LINE('Failed to complete bike maintenance: ' || SQLERRM);
  END complete_bike_maintenance;

END bike_maintenance_mgmt_pkg;
/
