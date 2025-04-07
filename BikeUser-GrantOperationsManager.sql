DECLARE
    table_not_exist EXCEPTION;
    PRAGMA EXCEPTION_INIT(table_not_exist, -942); -- Error code for "table or view does not exist"
BEGIN
    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE ON Customer TO OperationsManager';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE ON Payment_Details TO OperationsManager';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE ON Bike_Model TO OperationsManager';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE ON Employee TO OperationsManager';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE ON DOCKS TO OperationsManager';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE ON Bike TO OperationsManager';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE ON Bike_Accessory TO OperationsManager';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE ON Accessory TO OperationsManager';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE ON Maintenance TO OperationsManager';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE ON Rental TO OperationsManager';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;
    
    BEGIN
        EXECUTE IMMEDIATE 'GRANT EXECUTE ON customer_data_pkg TO OperationsManager';
    EXCEPTION
        WHEN OTHERS THEN
            IF SQLCODE = -942 THEN
                -- Handle the case where the package does not exist
                DBMS_OUTPUT.PUT_LINE('Package customer_data_pkg does not exist.');
            ELSE
                -- Handle other exceptions
                RAISE;
            END IF;
    END;
END;
/
