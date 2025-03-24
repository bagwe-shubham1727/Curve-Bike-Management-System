-- Drop Customer table if it exists
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Customer CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore errors if table does not exist
END;
/

-- Drop Payment_Details table if it exists
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Payment_Details CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore errors if table does not exist
END;
/

-- Drop Bike_Model table if it exists
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Bike_Model CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore errors if table does not exist
END;
/

-- Drop Employee table if it exists
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Employee CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore errors if table does not exist
END;
/

-- Drop DOCKS table if it exists
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE DOCKS CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore errors if table does not exist
END;
/

-- Drop the Accessory table if it already exists
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Accessory CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore errors if table does not exist
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Bike CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore errors if table does not exist
END;
/

-- Customer Table
CREATE TABLE Customer (
    Customer_ID RAW(16) DEFAULT SYS_GUID() NOT NULL PRIMARY KEY,-- Primary Key for Customer
    First_Name VARCHAR2(50) NOT NULL, --First Name of Customer
    Last_Name VARCHAR2(50) NOT NULL, --Last Name of Customer
    Email VARCHAR2(100) UNIQUE NOT NULL,  -- Each customer has a unique email
    Cust_Password RAW(256) DEFAULT NULL, --Password of Customer
    Phone VARCHAR2(15) NOT NULL CHECK (REGEXP_LIKE(Phone, '^[0-9]{10,15}$')),-- Valid phone numbers
    Street_Address VARCHAR2(100) NOT NULL, --Street Address of Customer
    House_Number VARCHAR2(10),  --House Number of Customer
    City VARCHAR2(50) NOT NULL,  --City of Customer
    State_Code CHAR(2)NOT NULL,  --State Code of Customer
    ZIP VARCHAR2(10) NOT NULL CHECK (LENGTH(ZIP) = 5)   --Zip code of Customer with limit 5
);

COMMENT ON COLUMN Customer.Customer_ID IS 'Primary Key for Customer';
COMMENT ON COLUMN Customer.First_Name IS 'First Name of Customer';
COMMENT ON COLUMN Customer.Last_Name IS 'Last Name of Customer';
COMMENT ON COLUMN Customer.Email IS 'Each customer has a unique email';
COMMENT ON COLUMN Customer.Cust_Password IS 'Encrypted password of Customer';
COMMENT ON COLUMN Customer.Phone IS 'Valid phone number (10–15 digits)';
COMMENT ON COLUMN Customer.Street_Address IS 'Street Address of Customer';
COMMENT ON COLUMN Customer.House_Number IS 'House Number of Customer';
COMMENT ON COLUMN Customer.City IS 'City of Customer';
COMMENT ON COLUMN Customer.State_Code IS '2-letter State Code of Customer';
COMMENT ON COLUMN Customer.ZIP IS '5-digit ZIP code of Customer';


-- Payment_Details Table
CREATE TABLE Payment_Details (
    Transaction_ID RAW(16) DEFAULT SYS_GUID() NOT NULL PRIMARY KEY,  -- Primary Key for Payment Details
    Customer_ID RAW(16) NOT NULL,     -- Foreign Key from Customer
    Date_Time Date NOT NULL,     -- Date and time of the Transaction
    Rent_Duration Number (5,2) NOT NULL,     -- Duration of rent (e.g., in hours or days)
    Payment_Method VARCHAR2(25) NOT NULL,    -- e.g., 'Credit Card', 'Wallet', etc.
    
    CONSTRAINT FK_Customer_ID FOREIGN KEY (Customer_ID)
        REFERENCES Customer (Customer_ID)
);

COMMENT ON COLUMN Payment_Details.Transaction_ID IS 'Primary Key for Payment Details';
COMMENT ON COLUMN Payment_Details.Customer_ID IS 'Foreign Key from Customer';
COMMENT ON COLUMN Payment_Details.Date_Time IS 'Date and time of the Transaction';
COMMENT ON COLUMN Payment_Details.Rent_Duration IS 'Duration of rent (e.g., in hours or days)';
COMMENT ON COLUMN Payment_Details.Payment_Method IS 'e.g., ''Credit Card'', ''Wallet'', etc.';


-- Bike_Model Table
CREATE TABLE Bike_Model (
    Model_ID RAW(16) DEFAULT SYS_GUID() NOT NULL PRIMARY KEY,  -- Primary Key for Bike_Model
    Bike_Brand_Name VARCHAR2(50) NOT NULL, -- Bike's brand name
    Bike_Model_Name VARCHAR2(50) NOT NULL -- Bike's model name
);
COMMENT ON COLUMN Bike_Model.Model_ID IS 'Primary Key for Bike_Model';
COMMENT ON COLUMN Bike_Model.Bike_Brand_Name IS 'Bikes brand name';
COMMENT ON COLUMN Bike_Model.Bike_Model_Name IS 'Bikes model name';


-- Employee Table
CREATE TABLE Employee (
    Employee_ID RAW(16) DEFAULT SYS_GUID() NOT NULL PRIMARY KEY,  -- Primary Key for Employee
    First_Name VARCHAR2(50) NOT NULL, -- First name of Employee
    Last_Name VARCHAR2(50) NOT NULL, -- Last Name of Employee
    Email VARCHAR2(100) UNIQUE NOT NULL,  -- Each Employee has a unique email
    Phone VARCHAR2(15) NOT NULL CHECK (REGEXP_LIKE(Phone, '^[0-9]{10,15}$')),  -- Valid phone numbers
    Street_Address VARCHAR2(100) NOT NULL, -- Street Address of Employee
    House_Number VARCHAR2(10), -- house Number of Employee
    City VARCHAR2(50) NOT NULL, -- City of Employee
    State_Code CHAR(2)NOT NULL, -- State Code of Employee
    ZIP VARCHAR2(10) NOT NULL CHECK (LENGTH(ZIP) = 5), -- Zip Code of Employee with limit 5
    Gender VARCHAR2(11), -- Gender of Employee
    Designation VARCHAR2(50) NOT NULL -- Designation of Employee
);


COMMENT ON COLUMN Employee.Employee_ID IS 'Primary Key for employee';
COMMENT ON COLUMN Employee.First_Name IS 'First name of the employee';
COMMENT ON COLUMN Employee.Last_Name IS 'Last name of the employee';
COMMENT ON COLUMN Employee.Email IS 'Unique email address of the employee';
COMMENT ON COLUMN Employee.Phone IS 'Phone number (10-15 digits) of the employee';
COMMENT ON COLUMN Employee.Street_Address IS 'Street address of the employee';
COMMENT ON COLUMN Employee.House_Number IS 'House Number of employee';
COMMENT ON COLUMN Employee.City IS 'City of employee';
COMMENT ON COLUMN Employee.State_Code IS '2-letter state code';
COMMENT ON COLUMN Employee.ZIP IS '5-digit ZIP code of the employee';
COMMENT ON COLUMN Employee.Gender IS 'Gender of the employee. Can be Male, Female, or Transgender';
COMMENT ON COLUMN Employee.Designation IS 'Job title or designation of the employee';

-- Docks Table
CREATE TABLE DOCKS (
    Dock_ID RAW(16) DEFAULT SYS_GUID() NOT NULL PRIMARY KEY,  -- Primary Key for DOCKS
    Dock_Name VARCHAR2(50) NOT NULL,                          -- Dock name
    Location VARCHAR2(50) NOT NULL,                           -- Location name
    Bike_Capacity INTEGER DEFAULT 0 NOT NULL,                 -- Number of bikes capacity
    Bikes_Available INTEGER DEFAULT 0 NOT NULL,               -- Available bikes at the dock
    Employee_ID RAW(16) NOT NULL,                             -- Foreign Key from EMPLOYEE
    CONSTRAINT DOCKS_Employee_FK FOREIGN KEY (Employee_ID)
        REFERENCES Employee(Employee_ID)                      -- Adjust column name as per EMPLOYEE table
);
COMMENT ON COLUMN DOCKS.Dock_ID IS 'Primary key for DOCKS';
COMMENT ON COLUMN DOCKS.Dock_Name IS 'Dock name';
COMMENT ON COLUMN DOCKS.Location IS 'Location name';
COMMENT ON COLUMN DOCKS.Bike_Capacity IS 'Number of bikes capacity';
COMMENT ON COLUMN DOCKS.Bikes_Available IS 'Available bikes at the dock';
COMMENT ON COLUMN DOCKS.Employee_ID IS 'Foreign Key from EMPLOYEE';


-- Accessory Table
CREATE TABLE Accessory (
    Item_ID RAW(16) DEFAULT SYS_GUID() NOT NULL PRIMARY KEY,   -- Unique identifier for each accessory
    Item_Name VARCHAR2(20) NOT NULL,                           -- Name of the accessory
    Item_Cost NUMBER(10, 2) DEFAULT 0 NOT NULL                 -- Cost of the accessory with two decimal places
);

COMMENT ON COLUMN Accessory.Item_ID IS 'Primary Key for Accessory';
COMMENT ON COLUMN Accessory.Item_Name IS 'Name of the Accessory';
COMMENT ON COLUMN Accessory.Item_Cost IS 'Cost of the Accessory (max 10 digits, 2 decimals)';


-- Bike Table 
CREATE TABLE Bike (
    Bike_ID RAW(16) DEFAULT SYS_GUID() NOT NULL PRIMARY KEY,         -- Unique identifier for each bike
    Current_Location VARCHAR2(50),                                   -- Current location of the bike
    Rental_Status CHAR(1) DEFAULT 'N' NOT NULL,                      -- Rental status (e.g., Y/N)
    Dock_ID RAW(16) NOT NULL,                                        -- Foreign key to Docks table
    Model_ID RAW(16) NOT NULL,                                       -- Foreign key to Bike_Model table


    CONSTRAINT FK_Dock_ID FOREIGN KEY (Dock_ID)
        REFERENCES Docks(Dock_ID),

    CONSTRAINT FK_Model_ID FOREIGN KEY (Model_ID)
        REFERENCES Bike_Model(Model_ID)
);

COMMENT ON COLUMN Bike.Bike_ID IS 'Primary key for Bike (RAW(16) UUID)';
COMMENT ON COLUMN Bike.Current_Location IS 'Current location of the bike';
COMMENT ON COLUMN Bike.Rental_Status IS 'Rental status of the bike (Y/N)';
COMMENT ON COLUMN Bike.Dock_ID IS 'Foreign key referencing Docks';
COMMENT ON COLUMN Bike.Model_ID IS 'Foreign key referencing Bike_Model';

