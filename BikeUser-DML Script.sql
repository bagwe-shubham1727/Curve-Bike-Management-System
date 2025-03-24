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


--Inserting data into DOCKS table
INSERT INTO DOCKS (Dock_ID, Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES (801, 'Boston Station Dock', 'Boston', 10, 8,101);

INSERT INTO DOCKS (Dock_ID, Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES (802, 'Back Bay Dock', 'Boston', 15, 12,103);

INSERT INTO DOCKS (Dock_ID, Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES (803, 'South Boston Dock', 'Boston', 20, 18,105);

INSERT INTO DOCKS (Dock_ID, Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES (804, 'North End Dock', 'Boston', 10, 9,102);

INSERT INTO DOCKS (Dock_ID, Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES (805, 'Fenway Dock', 'Boston', 15, 11,107);

INSERT INTO DOCKS (Dock_ID, Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES (806, 'Seaport Dock', 'Boston', 20, 16,104);

INSERT INTO DOCKS (Dock_ID, Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES (807, 'Beacon Hill Dock', 'Boston', 10, 8,108);

INSERT INTO DOCKS (Dock_ID, Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES (808, 'Harborfront Dock', 'Boston', 15, 13,106);

INSERT INTO DOCKS (Dock_ID, Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES (809, 'Cambridge Dock', 'Boston', 20, 19,109);

INSERT INTO DOCKS (Dock_ID, Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES (810, 'Charlestown Dock', 'Boston', 10, 7,110);

--View the result
SELECT * FROM DOCKS;

COMMIT;


-- Inserting data into Bike table
INSERT INTO Bike (Bike_ID, Current_Location, Rental_Status, Dock_ID, Model_ID)
VALUES (900, 'Central Station', 'N', 810, 300);

INSERT INTO Bike (Bike_ID, Current_Location, Rental_Status, Dock_ID, Model_ID)
VALUES (901, 'Harvard Square', 'Y', 801, 301);

INSERT INTO Bike (Bike_ID, Current_Location, Rental_Status, Dock_ID, Model_ID)
VALUES (902, 'MIT Gate', 'N', 802, 302);

INSERT INTO Bike (Bike_ID, Current_Location, Rental_Status, Dock_ID, Model_ID)
VALUES (903, 'Downtown Cambridge', 'N', 803, 303);

INSERT INTO Bike (Bike_ID, Current_Location, Rental_Status, Dock_ID, Model_ID)
VALUES (904, 'North Station', 'Y', 804, 304);

INSERT INTO Bike (Bike_ID, Current_Location, Rental_Status, Dock_ID, Model_ID)
VALUES (905, 'Broadway 3rd', 'N', 805, 305);

INSERT INTO Bike (Bike_ID, Current_Location, Rental_Status, Dock_ID, Model_ID) 
VALUES (906, 'Longwood', 'N', 807, 309); 

INSERT INTO Bike (Bike_ID, Current_Location, Rental_Status, Dock_ID, Model_ID) 
VALUES (907, 'Heath Street', 'Y', 808, 307); 

INSERT INTO Bike (Bike_ID, Current_Location, Rental_Status, Dock_ID, Model_ID) 
VALUES (908, 'Ruggles st', 'N', 806, 308);

INSERT INTO Bike (Bike_ID, Current_Location, Rental_Status, Dock_ID, Model_ID) 
VALUES (909, 'Bolyston st', 'N', 809, 306);


-- View inserted bikes
SELECT * FROM Bike;

COMMIT;


-- Inserting data into Maintenance table
INSERT INTO Maintenance (Maintenance_ID, Bike_ID, Employee_ID, Date_Time, Maintenance_Description, Repair_Cost) 
VALUES (1011, 901, 101, TO_DATE('2025-02-16 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Replaced brake pads on bike', 15.50); 

INSERT INTO Maintenance (Maintenance_ID, Bike_ID, Employee_ID, Date_Time, Maintenance_Description, Repair_Cost) 
VALUES (1012, 902, 102, TO_DATE('2025-02-17 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Repaired flat tire on bike', 8.75); 

INSERT INTO Maintenance (Maintenance_ID, Bike_ID, Employee_ID, Date_Time, Maintenance_Description, Repair_Cost) 
VALUES (1013, 909, 105, TO_DATE('2025-01-18 11:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Cleaned and lubricated chain on bike', 12.00); 

INSERT INTO Maintenance (Maintenance_ID, Bike_ID, Employee_ID, Date_Time, Maintenance_Description, Repair_Cost) 
VALUES (1014, 907, 106, TO_DATE('2025-03-19 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Performed safety inspection on bike', 0.00); 

INSERT INTO Maintenance (Maintenance_ID, Bike_ID, Employee_ID, Date_Time, Maintenance_Description, Repair_Cost) 
VALUES (1015, 903, 107, TO_DATE('2025-03-20 16:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Replaced worn tires on bike', 35.25); 

INSERT INTO Maintenance (Maintenance_ID, Bike_ID, Employee_ID, Date_Time, Maintenance_Description, Repair_Cost) 
VALUES (1016, 906, 103, TO_DATE('2025-01-21 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Adjusted gears on bike', 9.50); 

INSERT INTO Maintenance (Maintenance_ID, Bike_ID, Employee_ID, Date_Time, Maintenance_Description, Repair_Cost) 
VALUES (1017, 905, 104, TO_DATE('2025-03-22 12:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Replaced handlebar grips on bike', 7.25); 

INSERT INTO Maintenance (Maintenance_ID, Bike_ID, Employee_ID, Date_Time, Maintenance_Description, Repair_Cost) 
VALUES (1018, 908, 105, TO_DATE('2025-03-23 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Performed full tune-up on bike', 50.00); 

INSERT INTO Maintenance (Maintenance_ID, Bike_ID, Employee_ID, Date_Time, Maintenance_Description, Repair_Cost) 
VALUES (1019, 904, 109, TO_DATE('2025-01-15 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Adjusted brakes on bike', 12.50);

INSERT INTO Maintenance (Maintenance_ID, Bike_ID, Employee_ID, Date_Time, Maintenance_Description, Repair_Cost) 
VALUES (1020, 900, 108, TO_DATE('2025-02-18 14:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Replaced chain on bike', 20.00);


--View the result
select * from Maintenance;

COMMIT;

--Inserting data into Rentals table
INSERT INTO Rental (Rental_ID, Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time) 
VALUES (600, 1, 900, 503, 801, 803, TO_DATE('2025-03-25 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-03-25 11:45:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Rental_ID, Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time) 
VALUES (601, 2, 901, 502, 802, 804, TO_DATE('2025-03-26 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-03-26 11:18:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Rental_ID, Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time) 
VALUES (602, 3, 902, 505, 804, 805, TO_DATE('2025-03-23 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-03-23 11:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Rental_ID, Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time) 
VALUES (603, 4, 903, 512, 805, 806, TO_DATE('2025-03-16 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-03-16 12:50:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Rental_ID, Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time) 
VALUES (604, 5, 904, 506, 806, 807, TO_DATE('2025-03-22 09:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-03-22 10:40:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Rental_ID, Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time) 
VALUES (605, 6, 905, 509, 807, 808, TO_DATE('2025-03-19 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-03-19 12:50:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Rental_ID, Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time) 
VALUES (606, 7, 906, 514, 808, 809, TO_DATE('2025-03-14 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-03-14 16:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Rental_ID, Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time) 
VALUES (607, 8, 907, 504, 809, 810, TO_DATE('2025-03-24 13:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-03-24 14:45:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Rental_ID, Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time) 
VALUES (608, 9, 908, 507, 801, 802, TO_DATE('2025-03-21 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-03-21 18:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Rental_ID, Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time) 
VALUES (609, 10, 909, 508, 802, 803, TO_DATE('2025-03-20 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-03-20 12:00:00', 'YYYY-MM-DD HH24:MI:SS'));

--View the result
SELECT * FROM Rental;

COMMIT;

