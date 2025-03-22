BEGIN
    -- Drop the user if it exists to avoid conflict
    EXECUTE IMMEDIATE 'DROP USER BikeUser CASCADE';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore errors if the user does not exist
END;
/

-- Now, create the user
BEGIN
    EXECUTE IMMEDIATE 'CREATE USER BikeUser IDENTIFIED BY NeuBoston2025#';
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error creating user BikeUser');
END;
/

ALTER USER BikeUser DEFAULT TABLESPACE users QUOTA UNLIMITED ON users;

ALTER USER BikeUser TEMPORARY TABLESPACE TEMP;

GRANT CONNECT, RESOURCE TO BikeUser;

ALTER SESSION SET CURRENT_SCHEMA = BikeUser;

GRANT CREATE SESSION, CREATE VIEW, CREATE TABLE, ALTER SESSION, CREATE SEQUENCE TO BikeUser;
GRANT CREATE SYNONYM, CREATE DATABASE LINK, RESOURCE, UNLIMITED TABLESPACE TO BikeUser;

GRANT CREATE TABLE TO BikeUser;


GRANT CREATE ANY CONTEXT TO BikeUser;
GRANT EXECUTE ON DBMS_SESSION TO BikeUser;

GRANT EXECUTE ON DBMS_RLS TO BikeUser;





-- Script for DataViewerUser
BEGIN
    -- Drop the user if it exists to avoid conflict
    EXECUTE IMMEDIATE 'DROP USER DataViewerUser CASCADE';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore errors if the user does not exist
END;
/ 

-- Create DataViewerUser
BEGIN
    EXECUTE IMMEDIATE 'CREATE USER DataViewerUser IDENTIFIED BY ViewOnly2025#';
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error creating user DataViewerUser');
END;
/ 

ALTER USER DataViewerUser DEFAULT TABLESPACE users QUOTA 0 ON users;

ALTER USER DataViewerUser TEMPORARY TABLESPACE TEMP;

-- Grant necessary privileges to DataViewerUser
GRANT CREATE SESSION TO DataViewerUser;
GRANT SELECT ANY TABLE TO DataViewerUser;

