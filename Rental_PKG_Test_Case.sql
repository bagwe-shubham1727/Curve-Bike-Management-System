-- Enable DBMS_OUTPUT to view messages
SET SERVEROUTPUT ON;

DECLARE
  v_rental_id        NUMBER;
  v_status_message   VARCHAR2(4000);
  v_customer_id      NUMBER := 1;       -- Assumed to exist in Customer table
  v_bike_id          NUMBER := 6000;    -- Assumed to exist in Bike table
  v_transaction_id   NUMBER := 1002;    -- Assumed to exist in Payment_Details
  v_start_dock_id    NUMBER := 4000;    -- Bike is assumed to be docked here
  v_end_dock_id      NUMBER := 4009;    -- Bike will be returned here
  v_start_time       DATE := SYSDATE;
  v_end_time         DATE := SYSDATE + INTERVAL '15' MINUTE;
BEGIN
  -- Test 1: place_rental_order
  DBMS_OUTPUT.PUT_LINE('--- TEST 1: place_rental_order ---');
  bike_rental_mgmt_pkg.place_rental_order(
    p_customer_id     => v_customer_id,
    p_bike_id         => v_bike_id,
    p_transaction_id  => v_transaction_id,
    p_start_dock_id   => v_start_dock_id,
    p_end_dock_id     => v_end_dock_id,
    p_start_datetime  => v_start_time,
    p_end_datetime    => v_end_time,
    po_rental_id      => v_rental_id
  );

  IF v_rental_id > 0 THEN
    DBMS_OUTPUT.PUT_LINE('Rental placed successfully. Rental ID: ' || v_rental_id);
  ELSE
    DBMS_OUTPUT.PUT_LINE('Rental failed.');
  END IF;

  -- Test 2: update_bike_availability
  DBMS_OUTPUT.PUT_LINE('--- TEST 2: update_bike_availability ---');
  v_status_message := bike_rental_mgmt_pkg.update_bike_availability(
    p_bike_id         => v_bike_id,
    p_start_dock_id   => v_start_dock_id,
    p_end_dock_id     => v_end_dock_id,
    p_start_datetime  => v_start_time,
    p_end_datetime    => v_end_time
  );

  DBMS_OUTPUT.PUT_LINE('Availability Update Status: ' || v_status_message);

  -- Test 3: return_bike_proc
  DBMS_OUTPUT.PUT_LINE('--- TEST 3: return_bike_proc ---');
  bike_rental_mgmt_pkg.return_bike_proc(
    p_bike_id     => v_bike_id,
    p_end_dock_id => v_end_dock_id
  );

  DBMS_OUTPUT.PUT_LINE('Bike return procedure executed successfully.');

EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
END;
/
