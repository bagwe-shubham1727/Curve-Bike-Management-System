-- Drop Customer table if it exists
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Customer CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore errors if table does not exist
END;
/

-- Customer Table
CREATE TABLE Customer (
    Customer_ID RAW(16) DEFAULT SYS_GUID() NOT NULL PRIMARY KEY,
    First_Name VARCHAR2(50) NOT NULL,
    Last_Name VARCHAR2(50) NOT NULL,
    Email VARCHAR2(100) UNIQUE NOT NULL,  -- Each customer has a unique email
    Cust_Password RAW(256) DEFAULT NULL,
    Phone VARCHAR2(15) NOT NULL CHECK (REGEXP_LIKE(Phone, '^[0-9]{10,15}$')),  -- Valid phone numbers
    Street_Address VARCHAR2(100) NOT NULL,
    House_Number VARCHAR2(10),
    City VARCHAR2(50) NOT NULL,
    Cust_State CHAR(2)NOT NULL,
    ZIP VARCHAR2(10) NOT NULL CHECK (LENGTH(ZIP) = 5)
);