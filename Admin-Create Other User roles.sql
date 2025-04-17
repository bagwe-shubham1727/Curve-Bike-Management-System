-- Enable output
SET SERVEROUTPUT ON;

--------------------------------------------------------------------------------
-- Drop and Create DataViewerUser
--------------------------------------------------------------------------------
BEGIN
    EXECUTE IMMEDIATE 'DROP USER DataViewerUser CASCADE';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore if the user doesn't exist
END;
/

BEGIN
    EXECUTE IMMEDIATE 'CREATE USER DataViewerUser IDENTIFIED BY ViewOnly2025#';
    DBMS_OUTPUT.PUT_LINE('User DataViewerUser created successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error creating user DataViewerUser: ' || SQLERRM);
END;
/

ALTER USER DataViewerUser DEFAULT TABLESPACE users QUOTA 0 ON users;
ALTER USER DataViewerUser TEMPORARY TABLESPACE temp;

-- Grant read-only privileges
GRANT CREATE SESSION TO DataViewerUser;
GRANT CREATE VIEW TO DataViewerUser;


