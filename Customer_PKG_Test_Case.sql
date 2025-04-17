-- Enable DBMS_OUTPUT to view messages
SET SERVEROUTPUT ON;

DECLARE
  v_customer_id       NUMBER;
  v_first_name        VARCHAR2(100) := 'John';
  v_last_name         VARCHAR2(100) := 'Doe';
  v_email             VARCHAR2(100) := 'john.doe@example.com';
  v_cust_password     VARCHAR2(100) := 'password123';
  v_phone             VARCHAR2(15) := '1234567890';
  v_street_address    VARCHAR2(100) := '123 Elm Street';
  v_house_number      VARCHAR2(10) := '45';
  v_city              VARCHAR2(50) := 'Metropolis';
  v_state_code        VARCHAR2(5) := 'NY';
  v_zip               VARCHAR2(10) := '12345';
  v_status_message    VARCHAR2(4000);
BEGIN
  -- Test 1: insert_customer
  DBMS_OUTPUT.PUT_LINE('--- TEST 1: insert_customer ---');
  customer_data_pkg.insert_customer(
    p_first_name     => v_first_name,
    p_last_name      => v_last_name,
    p_email          => v_email,
    p_cust_password  => v_cust_password,
    p_phone          => v_phone,
    p_street_address => v_street_address,
    p_house_number   => v_house_number,
    p_city           => v_city,
    p_state_code     => v_state_code,
    p_zip            => v_zip
  );

  -- Test 2: get_customer_details
  DBMS_OUTPUT.PUT_LINE('--- TEST 2: get_customer_details ---');
  v_customer_id := 1001;  -- Assumed to exist in Customer table
  customer_data_pkg.get_customer_details(p_customer_id => v_customer_id);

  -- Test 3: update_customer
  DBMS_OUTPUT.PUT_LINE('--- TEST 3: update_customer ---');
  customer_data_pkg.update_customer(
    p_customer_id    => v_customer_id,
    p_first_name     => 'Jane',
    p_last_name      => 'Doe',
    p_email          => 'jane.doe@example.com',
    p_cust_password  => 'newpassword123',
    p_phone          => '9876543210',
    p_street_address => '456 Oak Street',
    p_house_number   => '78',
    p_city           => 'Gotham',
    p_state_code     => 'NJ',
    p_zip            => '67890'
  );

  -- Test 4: update_customer_email
  DBMS_OUTPUT.PUT_LINE('--- TEST 4: update_customer_email ---');
  customer_data_pkg.update_customer_email(
    p_customer_id => v_customer_id,
    p_email       => 'new.email@example.com'
  );

  -- Test 5: update_customer_password
  DBMS_OUTPUT.PUT_LINE('--- TEST 5: update_customer_password ---');
  customer_data_pkg.update_customer_password(
    p_customer_id   => v_customer_id,
    p_cust_password => 'updatedpassword123'
  );

  -- Test 6: update_customer_phone
  DBMS_OUTPUT.PUT_LINE('--- TEST 6: update_customer_phone ---');
  customer_data_pkg.update_customer_phone(
    p_customer_id => v_customer_id,
    p_phone       => '5555555555'
  );

  -- Test 7: update_customer_address
  DBMS_OUTPUT.PUT_LINE('--- TEST 7: update_customer_address ---');
  customer_data_pkg.update_customer_address(
    p_customer_id    => v_customer_id,
    p_street_address => '789 Pine Street',
    p_house_number   => '99',
    p_city           => 'Smallville',
    p_state_code     => 'KS',
    p_zip            => '11223'
  );

  -- Test 8: delete_customer
  DBMS_OUTPUT.PUT_LINE('--- TEST 8: delete_customer ---');
  customer_data_pkg.delete_customer(p_customer_id => v_customer_id);

EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
END;
/
