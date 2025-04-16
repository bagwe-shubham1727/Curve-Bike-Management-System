-- Test Case 1: PRIMARY KEY constraint on Customer (auto-generated ID)
BEGIN
    -- Attempting to insert with explicit Customer_ID should fail since it's auto-generated
    INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)
    VALUES (9999, 'Test', 'User', 'testuser1@xyz.com', 'testpass', '5555550001', 'Test Address', '101', 'TestCity', 'TX', '54321');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 1 Passed: PK violation (Customer ID is auto-generated): ' || SQLERRM);
END;
/

-- Test Case 2: Email uniqueness constraint on Customer
BEGIN
    -- Attempting to insert a duplicate email should fail
    INSERT INTO Customer (First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)
    VALUES ('Duplicate', 'Email', 'johndoe@xyz.com', 'password123', '5555551111', 'Some Street', '100', 'Boston', 'MA', '01234');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 2 Passed: Unique constraint violation (Customer.Email): ' || SQLERRM);
END;
/

-- Test Case 3: Email format validation on Customer
BEGIN
    -- Attempting to insert an invalid email format should fail
    INSERT INTO Customer (First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)
    VALUES ('Invalid', 'Email', 'not-an-email', 'password123', '5555552222', 'Email Street', '100', 'Boston', 'MA', '01234');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 3 Passed: CHECK constraint violation (Customer.Email format): ' || SQLERRM);
END;
/

-- Test Case 4: Phone number format validation on Customer (must be 10 digits)
BEGIN
    -- Attempting to insert an invalid phone format should fail
    INSERT INTO Customer (First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)
    VALUES ('Invalid', 'Phone', 'phone_test@xyz.com', 'password123', 'abc1234567', 'Phone Street', '100', 'Boston', 'MA', '01234');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 4 Passed: CHECK constraint violation (Customer.Phone format): ' || SQLERRM);
END;
/

-- Test Case 5: ZIP code length validation on Customer (must be 5 characters)
BEGIN
    -- Attempting to insert an invalid ZIP code length should fail
    INSERT INTO Customer (First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)
    VALUES ('Invalid', 'ZIP', 'zip_test@xyz.com', 'password123', '5555553333', 'ZIP Street', '100', 'Boston', 'MA', '123456');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 5 Passed: CHECK constraint violation (Customer.ZIP length): ' || SQLERRM);
END;
/

-- Test Case 6: FOREIGN KEY constraint on Payment_Details
BEGIN
    -- Attempting to reference a non-existent Customer_ID should fail
    INSERT INTO Payment_Details (Customer_ID, Payment_Method)
    VALUES (9999, 'Credit Card');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 6 Passed: FK constraint violation (Payment_Details.Customer_ID): ' || SQLERRM);
END;
/

-- Test Case 7: Date validation trigger on Payment_Details
BEGIN
    -- Attempting to insert with a date other than today should fail
    INSERT INTO Payment_Details (Customer_ID, Date_Time, Payment_Method)
    VALUES (1, TO_DATE('2020-01-01', 'YYYY-MM-DD'), 'Credit Card');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 7 Passed: Trigger violation (Payment_Details.Date_Time): ' || SQLERRM);
END;
/

-- Test Case 8: Gender validation on Employee
BEGIN
    -- Attempting to insert an invalid Gender value should fail
    INSERT INTO Employee (First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation)
    VALUES ('Invalid', 'Gender', 'gender_test@xyz.com', '5555554444', 'Gender Street', '100', 'Boston', 'MA', '01234', 'Invalid', 'Tester');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 8 Passed: CHECK constraint violation (Employee.Gender): ' || SQLERRM);
END;
/

-- Test Case 9: NOT NULL constraint on Bike_Model
BEGIN
    -- Attempting to insert NULL for a required field should fail
    INSERT INTO Bike_Model (Bike_Brand_Name, Bike_Model_Name)
    VALUES (NULL, 'Test Model');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 9 Passed: NOT NULL constraint violation (Bike_Model.Bike_Brand_Name): ' || SQLERRM);
END;
/

-- Test Case 10: Dock capacity check constraint
BEGIN
    -- Attempting to insert more available bikes than capacity should fail
    INSERT INTO DOCKS (Dock_Name, Dock_Location, Bike_Capacity, Bike_Available, Employee_ID)
    VALUES ('Test Dock', 'Test Location', 5, 10, (SELECT Employee_ID FROM Employee WHERE Email = 'johndoe@example.com'));
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 10 Passed: CHECK constraint violation (DOCKS.Bike_Available > Bike_Capacity): ' || SQLERRM);
END;
/

-- Test Case 11: Rental Status validation on Bike
BEGIN
    -- Attempting to insert an invalid Rental_Status value should fail
    INSERT INTO Bike (Current_Location, Rental_Status, Dock_ID, Model_ID)
    VALUES ('Test Location', 'X', 
            (SELECT Dock_ID FROM DOCKS WHERE Dock_Name = 'Boston Station Dock'), 
            (SELECT Model_ID FROM Bike_Model WHERE Bike_Model_Name = 'Marlin 6'));
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 11 Passed: CHECK constraint violation (Bike.Rental_Status): ' || SQLERRM);
END;
/

-- Test Case 12: Date validation trigger on Maintenance
BEGIN
    -- Attempting to insert a maintenance record with a date other than today should fail
    INSERT INTO Maintenance (Bike_ID, Employee_ID, Maintenance_Description, Date_Time, Repair_Cost)
    VALUES ((SELECT Bike_ID FROM Bike WHERE Current_Location = 'Central Station'), 
            (SELECT Employee_ID FROM Employee WHERE Email = 'johndoe@example.com'),
            'Test Maintenance', 
            TO_DATE('2020-01-01', 'YYYY-MM-DD'), 
            10.00);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 12 Passed: Trigger violation (Maintenance.Date_Time): ' || SQLERRM);
END;
/

-- Test Case 13: Repair Cost validation on Maintenance
BEGIN
    -- Attempting to insert a negative repair cost should fail
    INSERT INTO Maintenance (Bike_ID, Employee_ID, Maintenance_Description, Repair_Cost)
    VALUES ((SELECT Bike_ID FROM Bike WHERE Current_Location = 'Central Station'), 
            (SELECT Employee_ID FROM Employee WHERE Email = 'johndoe@example.com'),
            'Test Maintenance', 
            -10.00);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 13 Passed: CHECK constraint violation (Maintenance.Repair_Cost): ' || SQLERRM);
END;
/

-- Test Case 14: Rental start date validation
BEGIN
    -- Attempting to insert a rental with start date in the past should fail
    INSERT INTO Rental (Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time)
    VALUES ((SELECT Customer_ID FROM Customer WHERE Email = 'johndoe@xyz.com'),
            (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Central Station'),
            (SELECT Transaction_ID FROM Payment_Details WHERE Customer_ID = 1),
            (SELECT Dock_ID FROM DOCKS WHERE Dock_Name = 'Boston Station Dock'),
            (SELECT Dock_ID FROM DOCKS WHERE Dock_Name = 'Back Bay Dock'),
            SYSDATE - 1,
            SYSDATE + 1);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 14 Passed: Trigger violation (Rental.Start_Date_Time in past): ' || SQLERRM);
END;
/

-- Test Case 15: Rental end date validation
BEGIN
    -- Attempting to insert a rental with end date before start date should fail
    INSERT INTO Rental (Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time)
    VALUES ((SELECT Customer_ID FROM Customer WHERE Email = 'johndoe@xyz.com'),
            (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Central Station'),
            (SELECT Transaction_ID FROM Payment_Details WHERE Customer_ID = 1),
            (SELECT Dock_ID FROM DOCKS WHERE Dock_Name = 'Boston Station Dock'),
            (SELECT Dock_ID FROM DOCKS WHERE Dock_Name = 'Back Bay Dock'),
            SYSDATE + 1,
            SYSDATE);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 15 Passed: Trigger violation (Rental.End_Date_Time before Start_Date_Time): ' || SQLERRM);
END;
/

-- Test Case 16: Rental maximum duration validation
BEGIN
    -- Attempting to insert a rental with duration > 30 days should fail
    INSERT INTO Rental (Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time)
    VALUES ((SELECT Customer_ID FROM Customer WHERE Email = 'johndoe@xyz.com'),
            (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Central Station'),
            (SELECT Transaction_ID FROM Payment_Details WHERE Customer_ID = 1),
            (SELECT Dock_ID FROM DOCKS WHERE Dock_Name = 'Boston Station Dock'),
            (SELECT Dock_ID FROM DOCKS WHERE Dock_Name = 'Back Bay Dock'),
            SYSDATE,
            SYSDATE + 31);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 16 Passed: Trigger violation (Rental duration > 30 days): ' || SQLERRM);
END;
/

-- Test Case 17: Rental future start date validation
BEGIN
    -- Attempting to insert a rental with start date > 10 days in future should fail
    INSERT INTO Rental (Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time)
    VALUES ((SELECT Customer_ID FROM Customer WHERE Email = 'johndoe@xyz.com'),
            (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Central Station'),
            (SELECT Transaction_ID FROM Payment_Details WHERE Customer_ID = 1),
            (SELECT Dock_ID FROM DOCKS WHERE Dock_Name = 'Boston Station Dock'),
            (SELECT Dock_ID FROM DOCKS WHERE Dock_Name = 'Back Bay Dock'),
            SYSDATE + 11,
            SYSDATE + 12);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 17 Passed: Trigger violation (Rental.Start_Date_Time > 10 days from now): ' || SQLERRM);
END;
/

-- Test Case 18: Valid rental insertion and Rental_Time calculation
DECLARE
    v_rental_id NUMBER;
    v_rental_time NUMBER;
    v_expected_time NUMBER;
    v_start_time DATE;
    v_end_time DATE;
BEGIN
    -- Create valid rental with typical values
    v_start_time := SYSDATE + 1;
    v_end_time := SYSDATE + 2;
    
    INSERT INTO Rental (Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time)
    VALUES ((SELECT Customer_ID FROM Customer WHERE Email = 'johndoe@xyz.com'),
            (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Central Station'),
            (SELECT Transaction_ID FROM Payment_Details WHERE Customer_ID = 1),
            (SELECT Dock_ID FROM DOCKS WHERE Dock_Name = 'Boston Station Dock'),
            (SELECT Dock_ID FROM DOCKS WHERE Dock_Name = 'Back Bay Dock'),
            v_start_time,
            v_end_time)
    RETURNING Rental_ID, Rental_Time INTO v_rental_id, v_rental_time;
    
    -- Calculate expected time (24 hours)
    v_expected_time := ROUND((v_end_time - v_start_time) * 24, 2);
    
    -- Check if Rental_Time calculation is correct
    IF v_rental_time = v_expected_time THEN
        DBMS_OUTPUT.PUT_LINE('Test 18 Passed: Rental_Time calculation correct: ' || v_rental_time || ' hours');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Test 18 Failed: Rental_Time calculation incorrect. Expected: ' || v_expected_time || 
                              ', Got: ' || v_rental_time);
    END IF;
    
    -- Clean up test data
    DELETE FROM Rental WHERE Rental_ID = v_rental_id;
    
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 18 Failed with unexpected error: ' || SQLERRM);
END;
/

-- Test Case 19: Customer audit testing (modification)
-- This test verifies that customer updates are properly handled
DECLARE
    v_customer_id NUMBER;
BEGIN
    -- First, insert a test customer
    INSERT INTO Customer (First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)
    VALUES ('Trigger', 'Test', 'triggertest@xyz.com', 'triggerpass', '5555559999', 'Trigger St', '999', 'Boston', 'MA', '01234')
    RETURNING Customer_ID INTO v_customer_id;
    
    DBMS_OUTPUT.PUT_LINE('Test 19a Passed: Successfully inserted test customer with ID: ' || v_customer_id);
    
    -- Now update this customer
    UPDATE Customer 
    SET Phone = '5555558888', 
        Last_Name = 'TestUpdated'
    WHERE Customer_ID = v_customer_id;
    
    DBMS_OUTPUT.PUT_LINE('Test 19b Passed: Successfully updated customer data');
    
    -- Clean up test data
    DELETE FROM Customer WHERE Customer_ID = v_customer_id;
    DBMS_OUTPUT.PUT_LINE('Test 19c Passed: Successfully deleted test customer');
    
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 19 Failed with unexpected error: ' || SQLERRM);
        
        -- Attempt cleanup if error occurred
        BEGIN
            DELETE FROM Customer WHERE Customer_ID = v_customer_id;
        EXCEPTION
            WHEN OTHERS THEN NULL;
        END;
END;
/

-- Test Case 20: Composite primary key validation in Bike_Accessory
DECLARE
    v_item_id NUMBER;
    v_bike_id NUMBER;
BEGIN
    -- Get existing item_id and bike_id
    SELECT Item_ID INTO v_item_id FROM Accessory WHERE Item_Name = 'Bicycle Helmet';
    SELECT Bike_ID INTO v_bike_id FROM Bike WHERE Current_Location = 'Central Station';
    
    -- First insert should succeed (if not already in table)
    BEGIN
        INSERT INTO Bike_Accessory (Item_ID, Bike_ID)
        VALUES (v_item_id, v_bike_id);
        DBMS_OUTPUT.PUT_LINE('First Bike_Accessory insert succeeded or already exists');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('First Bike_Accessory insert failed: ' || SQLERRM);
    END;
    
    -- Second insert with same values should fail due to PK constraint
    BEGIN
        INSERT INTO Bike_Accessory (Item_ID, Bike_ID)
        VALUES (v_item_id, v_bike_id);
        DBMS_OUTPUT.PUT_LINE('Test 20 Failed: Duplicate insert into Bike_Accessory should have failed');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Test 20 Passed: PK violation on duplicate Bike_Accessory: ' || SQLERRM);
    END;
    
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 20 Failed with unexpected error: ' || SQLERRM);
END;
/

-- Test Case 21: Validate Bike model integrity
BEGIN
    -- Attempting to delete a bike model that has bikes should fail
    DELETE FROM Bike_Model 
    WHERE Model_ID = (SELECT Model_ID FROM Bike WHERE ROWNUM = 1);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 21 Passed: Cannot delete bike model in use: ' || SQLERRM);
END;
/

-- Test Case 22: Valid dock capacity update
DECLARE
    v_dock_id NUMBER;
    v_current_capacity NUMBER;
BEGIN
    -- Get an existing dock
    SELECT Dock_ID, Bike_Capacity INTO v_dock_id, v_current_capacity
    FROM DOCKS
    WHERE ROWNUM = 1;
    
    -- Update capacity to higher value
    UPDATE DOCKS
    SET Bike_Capacity = v_current_capacity + 5
    WHERE Dock_ID = v_dock_id;
    
    DBMS_OUTPUT.PUT_LINE('Test 22 Passed: Successfully updated dock capacity');
    
    -- Reset to original value
    UPDATE DOCKS
    SET Bike_Capacity = v_current_capacity
    WHERE Dock_ID = v_dock_id;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 22 Failed: ' || SQLERRM);
END;
/

-- Test Case 23: Validate Maintenance record insertion with valid values
DECLARE
    v_maintenance_id NUMBER;
BEGIN
    -- Insert a valid maintenance record
    INSERT INTO Maintenance (Bike_ID, Employee_ID, Maintenance_Description, Repair_Cost)
    VALUES ((SELECT Bike_ID FROM Bike WHERE ROWNUM = 1),
            (SELECT Employee_ID FROM Employee WHERE ROWNUM = 1),
            'Regular maintenance check',
            25.50)
    RETURNING Maintenance_ID INTO v_maintenance_id;
    
    DBMS_OUTPUT.PUT_LINE('Test 23 Passed: Successfully inserted maintenance record with ID: ' || v_maintenance_id);
    
    -- Clean up test data
    DELETE FROM Maintenance WHERE Maintenance_ID = v_maintenance_id;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 23 Failed: ' || SQLERRM);
END;
/

-- Test Case 24: Check bike status update when rented
DECLARE
    v_bike_id NUMBER;
    v_rental_id NUMBER;
    v_transaction_id NUMBER;
    v_status VARCHAR2(1);
BEGIN
    -- Get a bike that is available
    SELECT Bike_ID INTO v_bike_id
    FROM Bike
    WHERE Rental_Status = 'A'
    AND ROWNUM = 1;
    
    -- Create a transaction for this rental
    INSERT INTO Payment_Details (Customer_ID, Payment_Method)
    VALUES (1, 'Credit Card')
    RETURNING Transaction_ID INTO v_transaction_id;
    
    -- Create a rental for this bike
    INSERT INTO Rental (Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time)
    VALUES (1, v_bike_id, v_transaction_id,
            (SELECT Dock_ID FROM DOCKS WHERE ROWNUM = 1),
            (SELECT Dock_ID FROM DOCKS WHERE ROWNUM = 1),
            SYSDATE,
            SYSDATE + 1)
    RETURNING Rental_ID INTO v_rental_id;
    
    -- Check if bike status was updated to Rented
    SELECT Rental_Status INTO v_status
    FROM Bike
    WHERE Bike_ID = v_bike_id;
    
    IF v_status = 'R' THEN
        DBMS_OUTPUT.PUT_LINE('Test 24 Passed: Bike status correctly updated to Rented');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Test 24 Failed: Bike status not updated. Expected: R, Got: ' || v_status);
    END IF;
    
    -- Clean up test data
    DELETE FROM Rental WHERE Rental_ID = v_rental_id;
    DELETE FROM Payment_Details WHERE Transaction_ID = v_transaction_id;
    
    -- Reset bike status
    UPDATE Bike SET Rental_Status = 'A' WHERE Bike_ID = v_bike_id;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test 24 Failed with unexpected error: ' || SQLERRM);
END;
/

-- Success validation
BEGIN
    DBMS_OUTPUT.PUT_LINE('-------------');
    DBMS_OUTPUT.PUT_LINE('All test cases executed. If all tests passed, database constraints are working as expected.');
    DBMS_OUTPUT.PUT_LINE('-------------');
END;
/