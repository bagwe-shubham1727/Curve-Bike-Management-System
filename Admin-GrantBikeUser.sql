
DECLARE
    table_not_exist EXCEPTION;
    PRAGMA EXCEPTION_INIT(table_not_exist, -942); -- Error code for "table or view does not exist"
BEGIN
    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE, DELETE ON ACCESSORY TO BikeUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE, DELETE ON BIKE TO BikeUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE, DELETE ON BIKE_ACCESSORY TO BikeUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE, DELETE ON BIKE_MODEL TO BikeUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE, DELETE ON CUSTOMER TO BikeUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE, DELETE ON DOCKS TO BikeUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE, DELETE ON EMPLOYEE TO BikeUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE, DELETE ON MAINTENANCE TO BikeUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE, DELETE ON PAYMENT_DETAILS TO BikeUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE, DELETE ON RENTAL TO BikeUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;
    
    BEGIN
        EXECUTE IMMEDIATE 'GRANT EXECUTE ON DBMS_CRYPTO TO BikeUser';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; 
    END;
END;