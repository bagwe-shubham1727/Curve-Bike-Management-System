--Insert Data to Tables

-- Inserting data into Customer table
INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES (1, 'John', 'Doe', 'johndoe@xyz.com', 'john123', '5555551234', '123 Bane Street', '11', 'Boston', 'MA', '01234');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES (2, 'Harvey', 'Specter', 'harvey@xyz.com', 'harvey123', '5555555678', '456 Broklyn Ave', '754', 'Boston', 'MA', '56789');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES (3, 'Micheal', 'Scott', 'scottm@xyz.com', 'scottm123', '5555559123', '7 Dunder Mifflin', '-', 'Boston', 'MA', '22178');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES (4, 'Claire', 'Dunphy', 'claire@xyz.com', 'claire123', '5555554567', '88 Mass Ave', '7', 'Boston', 'MA', '22178');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES (5, 'John', 'Snow', 'snowyy@xyz.com', 'snowyy987', '5555558912', '456 Broklyn Ave', '655', 'Boston', 'MA', '56789');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES (6, 'Meghan', 'Markle', 'megz@xyz.com', 'megamark', '5555553456', '456 Broklyn Ave', '1001', 'Boston', 'MA', '56789');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES (7, 'Victoria', 'Bekham', 'beckham09@xyz.com', 'beckyvic', '5555557891', '122 Bane Street', '4', 'Boston', 'MA', '01234');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES (8, 'Kiara', 'Malhotra', 'kiaraadv@xyz.com', 'advanik123', '5555552345', '92 Mass Ave', '5', 'Boston', 'MA', '22178');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES (9, 'Shahrukh', 'Khan', 'kingkhan@xyz.com', 'badshah01', '5555556789', '100 Bollywood St', '-', 'Boston', 'MA', '00112');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES (10, 'Virat', 'Kohli', 'kingkohli@xyz.com', 'cricketking', '5555551230', '101 Bollywood St', '-', 'Boston', 'MA', '00112');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES (11, 'Vinay', 'Kumar', 'vinay@test.com', 'test123', '5505551230', '123 Main St', '9', 'Miami', 'FL', '98765');

-- View the result
SELECT * FROM Customer;

COMMIT;


-- Inserting data into Employee table
INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES (101, 'Erick', 'John', 'johndoe@example.com', '5551231234', '123 Main St', 'Apt 1A', 'New York', 'NY', '10001', 'Male', 'Operations Manager'); 

INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES (102, 'Jane', 'Doe', 'janedoe@example.com', '5555675678', '456 Elm St', 'Suite 2B', 'Boston', 'MA', '21156', 'Female', 'Quality Control Inspector'); 

INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES (103, 'Michael', 'Smith', 'michaelsmith@example.com', '5552469123', '789 Oak St', 'Unit 3C', 'San Francisco', 'CA', '94109', 'Male', 'Quality Control Inspector'); 

INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES (104, 'Emily', 'Jones', 'emilyjones@example.com', '5557894567', '321 Pine St', 'Apt 4D', 'Seattle', 'WA', '98101', 'Female', 'Quality Control Inspector'); 

INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES (105, 'Robert', 'Williams', 'robertwilliams@example.com', '5551358912', '987 Maple St', 'Unit 5F', 'Los Angeles', 'CA', '90012', 'Male', 'Quality Control Inspector'); 

INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES (106, 'Sarah', 'Brown', 'sarahbrown@example.com', '5553693456', '654 Cedar St', 'Apt 6B', 'Chicago', 'IL', '60610', 'Female', 'Quality Control Inspector'); 

INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES (107, 'Christopher', 'Davis', 'christopherdavis@example.com', '5552467891', '123 Pine St', 'Suite 8E', 'Houston', 'TX', '77002', 'Male', 'Quality Control Inspector'); 

INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES (108, 'Laura', 'Garcia', 'lauragarcia@example.com', '5557892345', '456 Oak St', 'Apt 3B', 'Miami', 'FL', '33130', 'Female', 'Quality Control Inspector'); 

INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES (109, 'Bob', 'Johnson', 'bob.johnson@email.com', '5559876789', '789 Oak St', 'Unit 5', 'Chicago', 'IL', '60601', 'Male', 'Quality Control Inspector'); 

INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES (110, 'Samantha', 'Clark', 'samantha.clark@email.com', '5553691234', '3690 Birch St', 'Apt 15', 'Atlanta', 'GA', '30301', 'Female', 'Operations Manager'); 


-- View the result
SELECT * FROM Employee;

COMMIT;


--Inserting data into Bike Model table
INSERT INTO Bike_Model (Model_ID, Bike_Brand_Name, Bike_Model_Name) VALUES (300, 'Trek', 'Marlin 6');

INSERT INTO Bike_Model (Model_ID, Bike_Brand_Name, Bike_Model_Name) VALUES (301, 'Giant', 'Talon 29er');

INSERT INTO Bike_Model (Model_ID, Bike_Brand_Name, Bike_Model_Name) VALUES (302, 'Specialized', 'Rockhopper Sport');

INSERT INTO Bike_Model (Model_ID, Bike_Brand_Name, Bike_Model_Name) VALUES (303, 'Cannondale', 'Trail 7');

INSERT INTO Bike_Model (Model_ID, Bike_Brand_Name, Bike_Model_Name) VALUES (304, 'Scott', 'Aspect 970');

INSERT INTO Bike_Model (Model_ID, Bike_Brand_Name, Bike_Model_Name) VALUES (305, 'Cube', 'AIM SL');

INSERT INTO Bike_Model (Model_ID, Bike_Brand_Name, Bike_Model_Name) VALUES (306, 'Santa Cruz', 'Chameleon');

INSERT INTO Bike_Model (Model_ID, Bike_Brand_Name, Bike_Model_Name) VALUES (307, 'Kona', 'Mahuna');

INSERT INTO Bike_Model (Model_ID, Bike_Brand_Name, Bike_Model_Name) VALUES (308, 'Norco', 'Storm 2');

INSERT INTO Bike_Model (Model_ID, Bike_Brand_Name, Bike_Model_Name) VALUES (309, 'Yeti', 'SB115');

--View the result
SELECT * FROM Bike_Model;

COMMIT;


-- Inserting data into Payment_Details table
INSERT INTO Payment_Details (Transaction_ID, Customer_ID, Date_Time, Rent_Duration, Payment_Method)
VALUES (501, 7, TO_DATE('2025-03-27 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 0.59, 'Cash');

INSERT INTO Payment_Details (Transaction_ID, Customer_ID, Date_Time, Rent_Duration, Payment_Method)
VALUES (502, 2, TO_DATE('2025-03-26 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2.3, 'Wallet');

INSERT INTO Payment_Details (Transaction_ID, Customer_ID, Date_Time, Rent_Duration, Payment_Method)
VALUES (503, 1, TO_DATE('2025-03-25 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1.77, 'Credit Card');

INSERT INTO Payment_Details (Transaction_ID, Customer_ID, Date_Time, Rent_Duration, Payment_Method)
VALUES (504, 8, TO_DATE('2025-03-24 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 0.73, 'Wallet');

INSERT INTO Payment_Details (Transaction_ID, Customer_ID, Date_Time, Rent_Duration, Payment_Method)
VALUES (505, 3, TO_DATE('2025-03-23 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2.15, 'Cash');

INSERT INTO Payment_Details (Transaction_ID, Customer_ID, Date_Time, Rent_Duration, Payment_Method)
VALUES (506, 5, TO_DATE('2025-03-22 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1.52, 'Wallet');

INSERT INTO Payment_Details (Transaction_ID, Customer_ID, Date_Time, Rent_Duration, Payment_Method)
VALUES (507, 9, TO_DATE('2025-03-21 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3.42, 'Credit Card');

INSERT INTO Payment_Details (Transaction_ID, Customer_ID, Date_Time, Rent_Duration, Payment_Method)
VALUES (508, 10, TO_DATE('2025-03-20 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3.19, 'Wallet');

INSERT INTO Payment_Details (Transaction_ID, Customer_ID, Date_Time, Rent_Duration, Payment_Method)
VALUES (509, 6, TO_DATE('2025-03-19 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1.84, 'UPI');

INSERT INTO Payment_Details (Transaction_ID, Customer_ID, Date_Time, Rent_Duration, Payment_Method)
VALUES (510, 11, TO_DATE('2025-03-18 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1.96, 'UPI');

INSERT INTO Payment_Details (Transaction_ID, Customer_ID, Date_Time, Rent_Duration, Payment_Method)
VALUES (511, 2, TO_DATE('2025-03-17 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2.84, 'Cash');

INSERT INTO Payment_Details (Transaction_ID, Customer_ID, Date_Time, Rent_Duration, Payment_Method)
VALUES (512, 4, TO_DATE('2025-03-16 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2.33, 'UPI');

INSERT INTO Payment_Details (Transaction_ID, Customer_ID, Date_Time, Rent_Duration, Payment_Method)
VALUES (513, 8, TO_DATE('2025-03-15 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1.92, 'UPI');

INSERT INTO Payment_Details (Transaction_ID, Customer_ID, Date_Time, Rent_Duration, Payment_Method)
VALUES (514, 7, TO_DATE('2025-03-14 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2.65, 'UPI');

INSERT INTO Payment_Details (Transaction_ID, Customer_ID, Date_Time, Rent_Duration, Payment_Method)
VALUES (515, 1, TO_DATE('2025-03-13 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2.49, 'Wallet');


--View the result
SELECT * FROM Payment_Details;

COMMIT;


-- Inserting data into Accessory table
INSERT INTO Accessory (Item_ID, Item_Name, Item_Cost) VALUES (200, 'Bicycle Helmet', 49.99);

INSERT INTO Accessory (Item_ID, Item_Name, Item_Cost) VALUES (201, 'Bike Lock', 19.99);

INSERT INTO Accessory (Item_ID, Item_Name, Item_Cost) VALUES (202, 'Water Bottle Holder', 9.99);

INSERT INTO Accessory (Item_ID, Item_Name, Item_Cost) VALUES (203, 'Bike Lights', 29.99);

INSERT INTO Accessory (Item_ID, Item_Name, Item_Cost) VALUES (204, 'Bike Pump', 39.99);

INSERT INTO Accessory (Item_ID, Item_Name, Item_Cost) VALUES (205, 'Bike Fenders', 49.99);

INSERT INTO Accessory (Item_ID, Item_Name, Item_Cost) VALUES (206, 'Bike Bell', 7.99);

INSERT INTO Accessory (Item_ID, Item_Name, Item_Cost) VALUES (207, 'Bike Gloves', 24.99);

INSERT INTO Accessory (Item_ID, Item_Name, Item_Cost) VALUES (208, 'Bike Computer', 99.99);

INSERT INTO Accessory (Item_ID, Item_Name, Item_Cost) VALUES (209, 'Bike Mirror', 14.99);

INSERT INTO Accessory (Item_ID, Item_Name, Item_Cost) VALUES (210, 'Bike Phone Mount', 19.99);

--View the result
SELECT * FROM Accessory;

COMMIT;

