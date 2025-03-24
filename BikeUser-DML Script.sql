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
select * from Employee ;