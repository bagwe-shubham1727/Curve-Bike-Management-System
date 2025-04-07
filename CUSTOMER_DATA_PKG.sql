CREATE OR REPLACE PACKAGE customer_data_pkg AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 
  -- Get Customer Details
    PROCEDURE get_customer_details (
        p_customer_id IN customer.customer_id%TYPE
    );

  -- Insert New Customer
    PROCEDURE insert_customer (
        p_first_name     IN customer.first_name%TYPE,
        p_last_name      IN customer.last_name%TYPE,
        p_email          IN customer.email%TYPE,
        p_cust_password  IN customer.cust_password%TYPE,
        p_phone          IN customer.phone%TYPE,
        p_street_address IN customer.street_address%TYPE,
        p_house_number   IN customer.house_number%TYPE,
        p_city           IN customer.city%TYPE,
        p_state_code     IN customer.state_code%TYPE,
        p_zip            IN customer.zip%TYPE
    );

  -- Update Full Customer Record
    PROCEDURE update_customer (
        p_customer_id    IN customer.customer_id%TYPE,
        p_first_name     IN customer.first_name%TYPE,
        p_last_name      IN customer.last_name%TYPE,
        p_email          IN customer.email%TYPE,
        p_cust_password  IN customer.cust_password%TYPE,
        p_phone          IN customer.phone%TYPE,
        p_street_address IN customer.street_address%TYPE,
        p_house_number   IN customer.house_number%TYPE,
        p_city           IN customer.city%TYPE,
        p_state_code     IN customer.state_code%TYPE,
        p_zip            IN customer.zip%TYPE
    );

  -- Update Email
    PROCEDURE update_customer_email (
        p_customer_id IN customer.customer_id%TYPE,
        p_email       IN customer.email%TYPE
    );

  -- Update Password
    PROCEDURE update_customer_password (
        p_customer_id   IN customer.customer_id%TYPE,
        p_cust_password IN customer.cust_password%TYPE
    );

  -- Update Phone
    PROCEDURE update_customer_phone (
        p_customer_id IN customer.customer_id%TYPE,
        p_phone       IN customer.phone%TYPE
    );

  -- Update Address
    PROCEDURE update_customer_address (
        p_customer_id    IN customer.customer_id%TYPE,
        p_street_address IN customer.street_address%TYPE,
        p_house_number   IN customer.house_number%TYPE,
        p_city           IN customer.city%TYPE,
        p_state_code     IN customer.state_code%TYPE,
        p_zip            IN customer.zip%TYPE
    );

  -- Delete Customer
    PROCEDURE delete_customer (
        p_customer_id IN customer.customer_id%TYPE
    );

END customer_data_pkg;
/


CREATE OR REPLACE PACKAGE BODY customer_data_pkg AS

  PROCEDURE Get_Customer_Details(p_Customer_ID IN Customer.Customer_ID%TYPE) IS
  BEGIN
    FOR rec IN (
      SELECT First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address,
             House_Number, City, State_Code, ZIP
      FROM Customer
      WHERE Customer_ID = p_Customer_ID
    )
    LOOP
      DBMS_OUTPUT.PUT_LINE('Name: ' || rec.First_Name || ' ' || rec.Last_Name);
      DBMS_OUTPUT.PUT_LINE('Email: ' || rec.Email);
      DBMS_OUTPUT.PUT_LINE('Phone: ' || rec.Phone);
      DBMS_OUTPUT.PUT_LINE('Address: ' || rec.Street_Address || ', ' || rec.City || ', ' || rec.State_Code || ' - ' || rec.ZIP);
    END LOOP;
  END;

  PROCEDURE Insert_Customer (
    p_First_Name     IN Customer.First_Name%TYPE,
    p_Last_Name      IN Customer.Last_Name%TYPE,
    p_Email          IN Customer.Email%TYPE,
    p_Cust_Password  IN Customer.Cust_Password%TYPE,
    p_Phone          IN Customer.Phone%TYPE,
    p_Street_Address IN Customer.Street_Address%TYPE,
    p_House_Number   IN Customer.House_Number%TYPE,
    p_City           IN Customer.City%TYPE,
    p_State_Code     IN Customer.State_Code%TYPE,
    p_ZIP            IN Customer.ZIP%TYPE
  ) IS
    v_Customer_ID NUMBER;
  BEGIN
    SELECT NVL(MAX(Customer_ID), 1000) + 1 INTO v_Customer_ID FROM Customer;

    INSERT INTO Customer (
      Customer_ID, First_Name, Last_Name, Email, Cust_Password,
      Phone, Street_Address, House_Number, City, State_Code, ZIP
    )
    VALUES (
      v_Customer_ID, p_First_Name, p_Last_Name, p_Email, p_Cust_Password,
      p_Phone, p_Street_Address, p_House_Number, p_City, p_State_Code, p_ZIP
    );

    DBMS_OUTPUT.PUT_LINE('Customer inserted with ID: ' || v_Customer_ID);
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Insert failed: ' || SQLERRM);
  END;

  PROCEDURE Update_Customer (
    p_Customer_ID    IN Customer.Customer_ID%TYPE,
    p_First_Name     IN Customer.First_Name%TYPE,
    p_Last_Name      IN Customer.Last_Name%TYPE,
    p_Email          IN Customer.Email%TYPE,
    p_Cust_Password  IN Customer.Cust_Password%TYPE,
    p_Phone          IN Customer.Phone%TYPE,
    p_Street_Address IN Customer.Street_Address%TYPE,
    p_House_Number   IN Customer.House_Number%TYPE,
    p_City           IN Customer.City%TYPE,
    p_State_Code     IN Customer.State_Code%TYPE,
    p_ZIP            IN Customer.ZIP%TYPE
  ) IS
  BEGIN
    UPDATE Customer
    SET First_Name = p_First_Name,
        Last_Name = p_Last_Name,
        Email = p_Email,
        Cust_Password = p_Cust_Password,
        Phone = p_Phone,
        Street_Address = p_Street_Address,
        House_Number = p_House_Number,
        City = p_City,
        State_Code = p_State_Code,
        ZIP = p_ZIP
    WHERE Customer_ID = p_Customer_ID;

    DBMS_OUTPUT.PUT_LINE('Customer updated successfully.');
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Update failed: ' || SQLERRM);
  END;

  PROCEDURE Update_Customer_Email (
    p_Customer_ID IN Customer.Customer_ID%TYPE,
    p_Email       IN Customer.Email%TYPE
  ) IS
  BEGIN
    UPDATE Customer SET Email = p_Email WHERE Customer_ID = p_Customer_ID;
    DBMS_OUTPUT.PUT_LINE('Email updated.');
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Failed to update email: ' || SQLERRM);
  END;

  PROCEDURE Update_Customer_Password (
    p_Customer_ID   IN Customer.Customer_ID%TYPE,
    p_Cust_Password IN Customer.Cust_Password%TYPE
  ) IS
  BEGIN
    UPDATE Customer SET Cust_Password = p_Cust_Password WHERE Customer_ID = p_Customer_ID;
    DBMS_OUTPUT.PUT_LINE('Password updated.');
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Failed to update password: ' || SQLERRM);
  END;

  PROCEDURE Update_Customer_Phone (
    p_Customer_ID IN Customer.Customer_ID%TYPE,
    p_Phone       IN Customer.Phone%TYPE
  ) IS
  BEGIN
    UPDATE Customer SET Phone = p_Phone WHERE Customer_ID = p_Customer_ID;
    DBMS_OUTPUT.PUT_LINE('Phone number updated.');
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Failed to update phone: ' || SQLERRM);
  END;

  PROCEDURE Update_Customer_Address (
    p_Customer_ID    IN Customer.Customer_ID%TYPE,
    p_Street_Address IN Customer.Street_Address%TYPE,
    p_House_Number   IN Customer.House_Number%TYPE,
    p_City           IN Customer.City%TYPE,
    p_State_Code     IN Customer.State_Code%TYPE,
    p_ZIP            IN Customer.ZIP%TYPE
  ) IS
  BEGIN
    UPDATE Customer
    SET Street_Address = p_Street_Address,
        House_Number = p_House_Number,
        City = p_City,
        State_Code = p_State_Code,
        ZIP = p_ZIP
    WHERE Customer_ID = p_Customer_ID;

    DBMS_OUTPUT.PUT_LINE('Address updated.');
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Failed to update address: ' || SQLERRM);
  END;

  PROCEDURE Delete_Customer (
    p_Customer_ID IN Customer.Customer_ID%TYPE
  ) IS
  BEGIN
    DELETE FROM Customer WHERE Customer_ID = p_Customer_ID;
    DBMS_OUTPUT.PUT_LINE('Customer deleted successfully.');
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Failed to delete customer: ' || SQLERRM);
  END;

END customer_data_pkg;
/
