-- Enable output
SET SERVEROUTPUT ON;

--------------------------------------------------------------------------------
-- Drop and Create BikeUser
--------------------------------------------------------------------------------
BEGIN
    EXECUTE IMMEDIATE 'DROP USER BikeUser CASCADE';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore if the user doesn't exist
END;
/

BEGIN
    EXECUTE IMMEDIATE 'CREATE USER BikeUser IDENTIFIED BY NeuBoston2025#';
    DBMS_OUTPUT.PUT_LINE('User BikeUser created successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error creating user BikeUser: ' || SQLERRM);
END;
/

ALTER USER BikeUser DEFAULT TABLESPACE users QUOTA UNLIMITED ON users;
ALTER USER BikeUser TEMPORARY TABLESPACE temp;

-- Grant roles and privileges to BikeUser
GRANT CONNECT, RESOURCE TO BikeUser;
GRANT CREATE SESSION, CREATE VIEW, CREATE TABLE, ALTER SESSION, CREATE SEQUENCE TO BikeUser;
GRANT CREATE SYNONYM, CREATE DATABASE LINK, RESOURCE, UNLIMITED TABLESPACE TO BikeUser;
GRANT CREATE TABLE TO BikeUser;
GRANT CREATE ANY CONTEXT TO BikeUser;
GRANT EXECUTE ON DBMS_SESSION TO BikeUser;
GRANT EXECUTE ON DBMS_RLS TO BikeUser;


