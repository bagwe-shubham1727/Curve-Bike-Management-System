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

--------------------------------------------------------------------------------
-- Drop and Create CustomerUser
--------------------------------------------------------------------------------
BEGIN
    EXECUTE IMMEDIATE 'DROP USER CustomerUser CASCADE';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore if the user doesn't exist
END;
/

BEGIN
    EXECUTE IMMEDIATE 'CREATE USER CustomerUser IDENTIFIED BY CustomerOnly2025#';
    DBMS_OUTPUT.PUT_LINE('User CustomerUser created successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error creating user CustomerUser: ' || SQLERRM);
END;
/

ALTER USER CustomerUser DEFAULT TABLESPACE users QUOTA 0 ON users;
ALTER USER CustomerUser TEMPORARY TABLESPACE temp;


--------------------------------------------------------------------------------
-- Drop and Create QualityAssuranceUser
--------------------------------------------------------------------------------
BEGIN
    EXECUTE IMMEDIATE 'DROP USER QualityAssuranceUser CASCADE';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore if the user doesn't exist
END;
/

BEGIN
    EXECUTE IMMEDIATE 'CREATE USER QualityAssuranceUser IDENTIFIED BY QualityUserOnly2025#';
    DBMS_OUTPUT.PUT_LINE('User QualityAssuranceUser created successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error creating user QualityAssuranceUser: ' || SQLERRM);
END;
/

ALTER USER QualityAssuranceUser DEFAULT TABLESPACE users QUOTA 0 ON users;
ALTER USER QualityAssuranceUser TEMPORARY TABLESPACE temp;

--------------------------------------------------------------------------------
-- Drop and Create OperationsManager
--------------------------------------------------------------------------------
BEGIN
    EXECUTE IMMEDIATE 'DROP USER OperationsManager CASCADE';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore if the user doesn't exist
END;
/

BEGIN
    EXECUTE IMMEDIATE 'CREATE USER OperationsManager IDENTIFIED BY OperationsOnly2025#';
    DBMS_OUTPUT.PUT_LINE('User OperationsManager created successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error creating user OperationsManager: ' || SQLERRM);
END;
/

ALTER USER OperationsManager DEFAULT TABLESPACE users QUOTA 0 ON users;
ALTER USER OperationsManager TEMPORARY TABLESPACE temp;