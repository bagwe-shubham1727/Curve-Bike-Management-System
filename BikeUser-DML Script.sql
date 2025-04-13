--Insert Data to Tables

-- Inserting data into Customer table
INSERT INTO Customer (First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES ('John', 'Doe', 'johndoe@xyz.com', 'john123', '5555551234', '123 Bane Street', '11', 'Boston', 'MA', '01234');

INSERT INTO Customer (First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES ('Harvey', 'Specter', 'harvey@xyz.com', 'harvey123', '5555555678', '456 Broklyn Ave', '754', 'Boston', 'MA', '56789');

INSERT INTO Customer (First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES ('Micheal', 'Scott', 'scottm@xyz.com', 'scottm123', '5555559123', '7 Dunder Mifflin', '-', 'Boston', 'MA', '22178');

INSERT INTO Customer (First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES ('Claire', 'Dunphy', 'claire@xyz.com', 'claire123', '5555554567', '88 Mass Ave', '7', 'Boston', 'MA', '22178');

INSERT INTO Customer (First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES ('John', 'Snow', 'snowyy@xyz.com', 'snowyy987', '5555558912', '456 Broklyn Ave', '655', 'Boston', 'MA', '56789');

INSERT INTO Customer (First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES ('Meghan', 'Markle', 'megz@xyz.com', 'megamark', '5555553456', '456 Broklyn Ave', '1001', 'Boston', 'MA', '56789');

INSERT INTO Customer (First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES ('Victoria', 'Bekham', 'beckham09@xyz.com', 'beckyvic', '5555557891', '122 Bane Street', '4', 'Boston', 'MA', '01234');

INSERT INTO Customer (First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES ('Kiara', 'Malhotra', 'kiaraadv@xyz.com', 'advanik123', '5555552345', '92 Mass Ave', '5', 'Boston', 'MA', '22178');

INSERT INTO Customer (First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES ('Shahrukh', 'Khan', 'kingkhan@xyz.com', 'badshah01', '5555556789', '100 Bollywood St', '-', 'Boston', 'MA', '00112');

INSERT INTO Customer (First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES ('Virat', 'Kohli', 'kingkohli@xyz.com', 'cricketking', '5555551230', '101 Bollywood St', '-', 'Boston', 'MA', '00112');

INSERT INTO Customer (First_Name, Last_Name, Email, Cust_Password, Phone, Street_Address, House_Number, City, State_Code, ZIP)  
VALUES ('Vinay', 'Kumar', 'vinay@test.com', 'test123', '5505551230', '123 Main St', '9', 'Miami', 'FL', '98765');

-- View the result
SELECT * FROM Customer;

COMMIT;


-- Inserting data into Employee table
INSERT INTO Employee (First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES ('Erick', 'John', 'johndoe@example.com', '5551231234', '123 Main St', 'Apt 1A', 'New York', 'NY', '10001', 'Male', 'Operations Manager'); 

INSERT INTO Employee (First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES ('Jane', 'Doe', 'janedoe@example.com', '5555675678', '456 Elm St', 'Suite 2B', 'Boston', 'MA', '21156', 'Female', 'Quality Control Inspector'); 

INSERT INTO Employee (First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES ('Michael', 'Smith', 'michaelsmith@example.com', '5552469123', '789 Oak St', 'Unit 3C', 'San Francisco', 'CA', '94109', 'Male', 'Quality Control Inspector'); 

INSERT INTO Employee (First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES ('Emily', 'Jones', 'emilyjones@example.com', '5557894567', '321 Pine St', 'Apt 4D', 'Seattle', 'WA', '98101', 'Female', 'Quality Control Inspector'); 

INSERT INTO Employee (First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES ('Robert', 'Williams', 'robertwilliams@example.com', '5551358912', '987 Maple St', 'Unit 5F', 'Los Angeles', 'CA', '90012', 'Male', 'Quality Control Inspector'); 

INSERT INTO Employee (First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES ('Sarah', 'Brown', 'sarahbrown@example.com', '5553693456', '654 Cedar St', 'Apt 6B', 'Chicago', 'IL', '60610', 'Female', 'Quality Control Inspector'); 

INSERT INTO Employee (First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES ('Christopher', 'Davis', 'christopherdavis@example.com', '5552467891', '123 Pine St', 'Suite 8E', 'Houston', 'TX', '77002', 'Male', 'Quality Control Inspector'); 

INSERT INTO Employee (First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES ('Laura', 'Garcia', 'lauragarcia@example.com', '5557892345', '456 Oak St', 'Apt 3B', 'Miami', 'FL', '33130', 'Female', 'Quality Control Inspector'); 

INSERT INTO Employee (First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES ('Bob', 'Johnson', 'bob.johnson@email.com', '5559876789', '789 Oak St', 'Unit 5', 'Chicago', 'IL', '60601', 'Male', 'Quality Control Inspector'); 

INSERT INTO Employee (First_Name, Last_Name, Email, Phone, Street_Address, House_Number, City, State_Code, ZIP, Gender, Designation) 
VALUES ('Samantha', 'Clark', 'samantha.clark@email.com', '5553691234', '3690 Birch St', 'Apt 15', 'Atlanta', 'GA', '30301', 'Female', 'Operations Manager'); 


-- View the result
SELECT * FROM Employee;

COMMIT;


--Inserting data into Bike Model table
INSERT INTO Bike_Model (Bike_Brand_Name, Bike_Model_Name) VALUES ('Trek', 'Marlin 6');

INSERT INTO Bike_Model (Bike_Brand_Name, Bike_Model_Name) VALUES ('Giant', 'Talon 29er');

INSERT INTO Bike_Model (Bike_Brand_Name, Bike_Model_Name) VALUES ('Specialized', 'Rockhopper Sport');

INSERT INTO Bike_Model (Bike_Brand_Name, Bike_Model_Name) VALUES ('Cannondale', 'Trail 7');

INSERT INTO Bike_Model (Bike_Brand_Name, Bike_Model_Name) VALUES ('Scott', 'Aspect 970');

INSERT INTO Bike_Model (Bike_Brand_Name, Bike_Model_Name) VALUES ('Cube', 'AIM SL');

INSERT INTO Bike_Model (Bike_Brand_Name, Bike_Model_Name) VALUES ('Santa Cruz', 'Chameleon');

INSERT INTO Bike_Model (Bike_Brand_Name, Bike_Model_Name) VALUES ('Kona', 'Mahuna');

INSERT INTO Bike_Model (Bike_Brand_Name, Bike_Model_Name) VALUES ('Norco', 'Storm 2');

INSERT INTO Bike_Model (Bike_Brand_Name, Bike_Model_Name) VALUES ('Yeti', 'SB115');

--View the result
SELECT * FROM Bike_Model;

COMMIT;


-- Inserting data into Payment_Details table
INSERT INTO Payment_Details (Customer_ID, Payment_Method)
VALUES ((SELECT Customer_ID FROM Customer WHERE Email = 'johndoe@xyz.com'),'Cash');



INSERT INTO Payment_Details (Customer_ID, Payment_Method)
VALUES ((SELECT Customer_ID FROM Customer WHERE Email = 'harvey@xyz.com'),'Wallet');



INSERT INTO Payment_Details (Customer_ID, Payment_Method)
VALUES ((SELECT Customer_ID FROM Customer WHERE Email = 'scottm@xyz.com'),'Credit Card');



INSERT INTO Payment_Details (Customer_ID, Payment_Method)
VALUES ((SELECT Customer_ID FROM Customer WHERE Email = 'claire@xyz.com'),'Wallet');



INSERT INTO Payment_Details (Customer_ID, Payment_Method)
VALUES ((SELECT Customer_ID FROM Customer WHERE Email = 'snowyy@xyz.com'),'Cash');



INSERT INTO Payment_Details (Customer_ID, Payment_Method)
VALUES ((SELECT Customer_ID FROM Customer WHERE Email = 'megz@xyz.com'),'Wallet');



INSERT INTO Payment_Details (Customer_ID, Payment_Method)
VALUES ((SELECT Customer_ID FROM Customer WHERE Email = 'beckham09@xyz.com'),'Credit Card');



INSERT INTO Payment_Details (Customer_ID, Payment_Method)
VALUES ((SELECT Customer_ID FROM Customer WHERE Email = 'kiaraadv@xyz.com'),'Wallet');



INSERT INTO Payment_Details (Customer_ID, Payment_Method)
VALUES ((SELECT Customer_ID FROM Customer WHERE Email = 'kingkhan@xyz.com'),'UPI');



INSERT INTO Payment_Details (Customer_ID, Payment_Method)
VALUES ((SELECT Customer_ID FROM Customer WHERE Email = 'kingkohli@xyz.com'),'UPI');



INSERT INTO Payment_Details (Customer_ID, Payment_Method)
VALUES ((SELECT Customer_ID FROM Customer WHERE Email = 'vinay@test.com'),'Cash');


--View the result
SELECT * FROM Payment_Details;

COMMIT;


-- Inserting data into Accessory table
INSERT INTO Accessory (Item_Name, Item_Cost) VALUES ('Bicycle Helmet', 49.99);

INSERT INTO Accessory (Item_Name, Item_Cost) VALUES ('Bike Lock', 19.99);

INSERT INTO Accessory (Item_Name, Item_Cost) VALUES ('Water Bottle Holder', 9.99);

INSERT INTO Accessory (Item_Name, Item_Cost) VALUES ('Bike Lights', 29.99);

INSERT INTO Accessory (Item_Name, Item_Cost) VALUES ('Bike Pump', 39.99);

INSERT INTO Accessory (Item_Name, Item_Cost) VALUES ('Bike Fenders', 49.99);

INSERT INTO Accessory (Item_Name, Item_Cost) VALUES ('Bike Bell', 7.99);

INSERT INTO Accessory (Item_Name, Item_Cost) VALUES ('Bike Gloves', 24.99);

INSERT INTO Accessory (Item_Name, Item_Cost) VALUES ('Bike Computer', 99.99);

INSERT INTO Accessory (Item_Name, Item_Cost) VALUES ('Bike Mirror', 14.99);

INSERT INTO Accessory (Item_Name, Item_Cost) VALUES ('Bike Phone Mount', 19.99);

--View the result
SELECT * FROM Accessory;

COMMIT;


--Inserting data into DOCKS table
INSERT INTO DOCKS (Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES ('Boston Station Dock', 'Boston', 10, 8,(SELECT Employee_ID FROM Employee WHERE Email = 'johndoe@example.com'));

INSERT INTO DOCKS (Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES ('Back Bay Dock', 'Boston', 15, 12,(SELECT Employee_ID FROM Employee WHERE Email = 'janedoe@example.com'));

INSERT INTO DOCKS (Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES ('South Boston Dock', 'Boston', 20, 18,(SELECT Employee_ID FROM Employee WHERE Email = 'michaelsmith@example.com'));

INSERT INTO DOCKS (Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES ('North End Dock', 'Boston', 10, 9,(SELECT Employee_ID FROM Employee WHERE Email = 'emilyjones@example.com'));

INSERT INTO DOCKS (Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES ('Fenway Dock', 'Boston', 15, 11,(SELECT Employee_ID FROM Employee WHERE Email = 'robertwilliams@example.com'));

INSERT INTO DOCKS (Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES ('Seaport Dock', 'Boston', 20, 16,(SELECT Employee_ID FROM Employee WHERE Email = 'sarahbrown@example.com'));

INSERT INTO DOCKS (Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES ('Beacon Hill Dock', 'Boston', 10, 8,(SELECT Employee_ID FROM Employee WHERE Email = 'christopherdavis@example.com'));

INSERT INTO DOCKS (Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES ('Harborfront Dock', 'Boston', 15, 13,(SELECT Employee_ID FROM Employee WHERE Email = 'lauragarcia@example.com'));

INSERT INTO DOCKS (Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES ('Cambridge Dock', 'Boston', 20, 19,(SELECT Employee_ID FROM Employee WHERE Email = 'bob.johnson@email.com'));

INSERT INTO DOCKS (Dock_Name, Dock_Location, Bike_Capacity, Bike_Available,Employee_ID) VALUES ('Charlestown Dock', 'Boston', 10, 7,(SELECT Employee_ID FROM Employee WHERE Email = 'samantha.clark@email.com'));

--View the result
SELECT 
    Dock_ID,
    Dock_Name,
    Dock_Location,
    Bike_Capacity,
    Bike_Available,
    Employee_ID,
    CalculateAvailableSpots(Bike_Capacity, Bike_Available) AS Available_Spots
FROM DOCKS;

COMMIT;

-- Inserting data into Bike table
INSERT INTO Bike (Current_Location, Rental_Status, Dock_ID, Model_ID) VALUES ('Central Station', 'N', (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Boston Station Dock'), (SELECT Model_ID FROM Bike_Model WHERE Bike_Model_Name = 'Marlin 6'));

INSERT INTO Bike (Current_Location, Rental_Status, Dock_ID, Model_ID) VALUES ('Harvard Square', 'Y', (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Back Bay Dock'), (SELECT Model_ID FROM Bike_Model WHERE Bike_Model_Name = 'Talon 29er'));

INSERT INTO Bike (Current_Location, Rental_Status, Dock_ID, Model_ID) VALUES ('MIT Gate', 'N', (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'South Boston Dock'), (SELECT Model_ID FROM Bike_Model WHERE Bike_Model_Name = 'Rockhopper Sport'));

INSERT INTO Bike (Current_Location, Rental_Status, Dock_ID, Model_ID) VALUES ('Downtown Cambridge', 'N', (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'North End Dock'), (SELECT Model_ID FROM Bike_Model WHERE Bike_Model_Name = 'Trail 7'));

INSERT INTO Bike (Current_Location, Rental_Status, Dock_ID, Model_ID) VALUES ('North Station', 'Y', (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Fenway Dock'), (SELECT Model_ID FROM Bike_Model WHERE Bike_Model_Name = 'Aspect 970'));

INSERT INTO Bike (Current_Location, Rental_Status, Dock_ID, Model_ID) VALUES ('Broadway 3rd', 'N', (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Seaport Dock'), (SELECT Model_ID FROM Bike_Model WHERE Bike_Model_Name = 'AIM SL'));

INSERT INTO Bike (Current_Location, Rental_Status, Dock_ID, Model_ID) VALUES ('South End', 'N', (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Beacon Hill Dock'), (SELECT Model_ID FROM Bike_Model WHERE Bike_Model_Name = 'Chameleon'));

INSERT INTO Bike (Current_Location, Rental_Status, Dock_ID, Model_ID) VALUES ('Union Park', 'Y', (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Harborfront Dock'), (SELECT Model_ID FROM Bike_Model WHERE Bike_Model_Name = 'Mahuna'));

INSERT INTO Bike (Current_Location, Rental_Status, Dock_ID, Model_ID) VALUES ('Tech Crossing', 'N', (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Cambridge Dock'), (SELECT Model_ID FROM Bike_Model WHERE Bike_Model_Name = 'Storm 2'));

INSERT INTO Bike (Current_Location, Rental_Status, Dock_ID, Model_ID) VALUES ('Museum Square', 'Y', (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Charlestown Dock'), (SELECT Model_ID FROM Bike_Model WHERE Bike_Model_Name = 'SB115'));

-- View inserted bikes
SELECT * FROM Bike;

COMMIT;

-- Inserting data into Maintenance table
INSERT INTO Maintenance (Employee_ID, Bike_ID, Maintenance_Description, Repair_Cost) 
VALUES ((SELECT Employee_ID FROM Employee WHERE Email = 'johndoe@example.com'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Central Station'), 'Replaced brake pads on bike', 15.50); 

INSERT INTO Maintenance (Employee_ID, Bike_ID, Maintenance_Description, Repair_Cost) 
VALUES ((SELECT Employee_ID FROM Employee WHERE Email = 'janedoe@example.com'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Harvard Square'), 'Repaired flat tire on bike', 8.75); 

INSERT INTO Maintenance (Employee_ID, Bike_ID, Maintenance_Description, Repair_Cost) 
VALUES ((SELECT Employee_ID FROM Employee WHERE Email = 'michaelsmith@example.com'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'MIT Gate'), 'Cleaned and lubricated chain on bike', 12.00); 

INSERT INTO Maintenance (Employee_ID, Bike_ID, Maintenance_Description, Repair_Cost) 
VALUES ((SELECT Employee_ID FROM Employee WHERE Email = 'emilyjones@example.com'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Downtown Cambridge'), 'Performed safety inspection on bike', 0.00); 

INSERT INTO Maintenance (Employee_ID, Bike_ID, Maintenance_Description, Repair_Cost) 
VALUES ((SELECT Employee_ID FROM Employee WHERE Email = 'robertwilliams@example.com'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'North Station'), 'Replaced worn tires on bike', 35.25); 

INSERT INTO Maintenance (Employee_ID, Bike_ID, Maintenance_Description, Repair_Cost) 
VALUES ((SELECT Employee_ID FROM Employee WHERE Email = 'sarahbrown@example.com'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Broadway 3rd'), 'Adjusted gears on bike', 9.50); 

INSERT INTO Maintenance (Employee_ID, Bike_ID, Maintenance_Description, Repair_Cost) 
VALUES ((SELECT Employee_ID FROM Employee WHERE Email = 'christopherdavis@example.com'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'South End'), 'Replaced handlebar grips on bike', 7.25); 

INSERT INTO Maintenance (Employee_ID, Bike_ID, Maintenance_Description, Repair_Cost) 
VALUES ((SELECT Employee_ID FROM Employee WHERE Email = 'lauragarcia@example.com'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Union Park'), 'Performed full tune-up on bike', 50.00); 

INSERT INTO Maintenance (Employee_ID, Bike_ID, Maintenance_Description, Repair_Cost) 
VALUES ((SELECT Employee_ID FROM Employee WHERE Email = 'bob.johnson@email.com'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Tech Crossing'), 'Adjusted brakes on bike', 12.50);

INSERT INTO Maintenance (Employee_ID, Bike_ID, Maintenance_Description, Repair_Cost) 
VALUES ((SELECT Employee_ID FROM Employee WHERE Email = 'samantha.clark@email.com'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Museum Square'), 'Replaced chain on bike', 20.00);


--View the result
select * from Maintenance;

COMMIT;

--Inserting data into Rentals table
INSERT INTO Rental (Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time)
VALUES ((SELECT Customer_ID FROM Payment_Details WHERE Transaction_ID = 1000), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Central Station'), (SELECT Transaction_ID FROM Payment_Details WHERE Transaction_ID = 1000), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Boston Station Dock'), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Charlestown Dock'), TO_DATE('2025-04-17 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-04-22 11:45:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time)
VALUES ((SELECT Customer_ID FROM Payment_Details WHERE Transaction_ID = 1002), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Harvard Square'), (SELECT Transaction_ID FROM Payment_Details WHERE Transaction_ID = 1002), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Back Bay Dock'), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Cambridge Dock'), TO_DATE('2025-04-18 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-04-20 11:18:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time)
VALUES ((SELECT Customer_ID FROM Payment_Details WHERE Transaction_ID = 1003), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'MIT Gate'), (SELECT Transaction_ID FROM Payment_Details WHERE Transaction_ID = 1003), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'South Boston Dock'), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Harborfront Dock'), TO_DATE('2025-04-20 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-04-21 11:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time)
VALUES ((SELECT Customer_ID FROM Payment_Details WHERE Transaction_ID = 1004), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Downtown Cambridge'), (SELECT Transaction_ID FROM Payment_Details WHERE Transaction_ID = 1004), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'North End Dock'), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Beacon Hill Dock'), TO_DATE('2025-04-21 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-04-21 12:50:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time)
VALUES ((SELECT Customer_ID FROM Payment_Details WHERE Transaction_ID = 1005), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'North Station'), (SELECT Transaction_ID FROM Payment_Details WHERE Transaction_ID = 1005), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Fenway Dock'), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Beacon Hill Dock'), TO_DATE('2025-04-19 09:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-04-20 10:40:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time)
VALUES ((SELECT Customer_ID FROM Payment_Details WHERE Transaction_ID = 1006), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Broadway 3rd'), (SELECT Transaction_ID FROM Payment_Details WHERE Transaction_ID = 1006), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Seaport Dock'), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'South Boston Dock'), TO_DATE('2025-04-18 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-04-22 12:50:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time)
VALUES ((SELECT Customer_ID FROM Payment_Details WHERE Transaction_ID = 1007), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'South End'), (SELECT Transaction_ID FROM Payment_Details WHERE Transaction_ID = 1007), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Beacon Hill Dock'), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Seaport Dock'), TO_DATE('2025-04-17 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-04-17 16:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time)
VALUES ((SELECT Customer_ID FROM Payment_Details WHERE Transaction_ID = 1008), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Union Park'), (SELECT Transaction_ID FROM Payment_Details WHERE Transaction_ID = 1008), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Harborfront Dock'), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Fenway Dock'), TO_DATE('2025-04-18 13:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-04-19 14:45:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time)
VALUES ((SELECT Customer_ID FROM Payment_Details WHERE Transaction_ID = 1009), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Tech Crossing'), (SELECT Transaction_ID FROM Payment_Details WHERE Transaction_ID = 1009), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Cambridge Dock'), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'North End Dock'), TO_DATE('2025-04-17 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-04-18 18:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Rental (Customer_ID, Bike_ID, Transaction_ID, Start_Dock_ID, End_Dock_ID, Start_Date_Time, End_Date_Time)
VALUES ((SELECT Customer_ID FROM Payment_Details WHERE Transaction_ID = 1001), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Museum Square'), (SELECT Transaction_ID FROM Payment_Details WHERE Transaction_ID = 1001), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'Charlestown Dock'), (SELECT Dock_ID FROM Docks WHERE Dock_Name = 'South Boston Dock'), TO_DATE('2025-04-19 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-04-19 12:00:00', 'YYYY-MM-DD HH24:MI:SS'));

-- View the data
SELECT * FROM Rental;

COMMIT;

-- Inserting data into Bike_Accessory table
INSERT INTO Bike_Accessory (Item_ID, Bike_ID) VALUES ((SELECT Item_ID FROM Accessory WHERE Item_Name = 'Bicycle Helmet'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Central Station' FETCH FIRST 1 ROWS ONLY));

INSERT INTO Bike_Accessory (Item_ID, Bike_ID) VALUES ((SELECT Item_ID FROM Accessory WHERE Item_Name = 'Bike Lock'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Harvard Square' FETCH FIRST 1 ROWS ONLY));

INSERT INTO Bike_Accessory (Item_ID, Bike_ID) VALUES ((SELECT Item_ID FROM Accessory WHERE Item_Name = 'Water Bottle Holder'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'MIT Gate' FETCH FIRST 1 ROWS ONLY));

INSERT INTO Bike_Accessory (Item_ID, Bike_ID) VALUES ((SELECT Item_ID FROM Accessory WHERE Item_Name = 'Bike Lights'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Downtown Cambridge' FETCH FIRST 1 ROWS ONLY));

INSERT INTO Bike_Accessory (Item_ID, Bike_ID) VALUES ((SELECT Item_ID FROM Accessory WHERE Item_Name = 'Bike Pump'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'North Station' FETCH FIRST 1 ROWS ONLY));

INSERT INTO Bike_Accessory (Item_ID, Bike_ID) VALUES ((SELECT Item_ID FROM Accessory WHERE Item_Name = 'Bike Fenders'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Broadway 3rd' FETCH FIRST 1 ROWS ONLY));

INSERT INTO Bike_Accessory (Item_ID, Bike_ID) VALUES ((SELECT Item_ID FROM Accessory WHERE Item_Name = 'Bike Bell'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'South End' FETCH FIRST 1 ROWS ONLY));

INSERT INTO Bike_Accessory (Item_ID, Bike_ID) VALUES ((SELECT Item_ID FROM Accessory WHERE Item_Name = 'Bike Gloves'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Union Park' FETCH FIRST 1 ROWS ONLY));

INSERT INTO Bike_Accessory (Item_ID, Bike_ID) VALUES ((SELECT Item_ID FROM Accessory WHERE Item_Name = 'Bike Computer'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Tech Crossing' FETCH FIRST 1 ROWS ONLY));

INSERT INTO Bike_Accessory (Item_ID, Bike_ID) VALUES ((SELECT Item_ID FROM Accessory WHERE Item_Name = 'Bike Mirror'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Museum Square' FETCH FIRST 1 ROWS ONLY));

INSERT INTO Bike_Accessory (Item_ID, Bike_ID) VALUES ((SELECT Item_ID FROM Accessory WHERE Item_Name = 'Bike Phone Mount'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Central Station' FETCH FIRST 1 ROWS ONLY));

INSERT INTO Bike_Accessory (Item_ID, Bike_ID) VALUES ((SELECT Item_ID FROM Accessory WHERE Item_Name = 'Water Bottle Holder'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Downtown Cambridge' FETCH FIRST 1 ROWS ONLY));

INSERT INTO Bike_Accessory (Item_ID, Bike_ID) VALUES ((SELECT Item_ID FROM Accessory WHERE Item_Name = 'Bike Pump'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Harvard Square' FETCH FIRST 1 ROWS ONLY));

INSERT INTO Bike_Accessory (Item_ID, Bike_ID) VALUES ((SELECT Item_ID FROM Accessory WHERE Item_Name = 'Bike Bell'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Broadway 3rd' FETCH FIRST 1 ROWS ONLY));

INSERT INTO Bike_Accessory (Item_ID, Bike_ID) VALUES ((SELECT Item_ID FROM Accessory WHERE Item_Name = 'Bicycle Helmet'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Union Park' FETCH FIRST 1 ROWS ONLY));

INSERT INTO Bike_Accessory (Item_ID, Bike_ID) VALUES ((SELECT Item_ID FROM Accessory WHERE Item_Name = 'Bike Gloves'), (SELECT Bike_ID FROM Bike WHERE Current_Location = 'Tech Crossing' FETCH FIRST 1 ROWS ONLY));

-- View inserted bike-accessory data
SELECT * FROM Bike_Accessory;

COMMIT;
