
DECLARE
    table_not_exist EXCEPTION;
    PRAGMA EXCEPTION_INIT(table_not_exist, -942); -- Error code for "table or view does not exist"
BEGIN
    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT, UPDATE ON CUSTOMER TO CustomerUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;
    
    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON PAYMENT_DETAILS TO CustomerUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;
    
    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON RENTAL TO CustomerUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;
        
    BEGIN
        EXECUTE IMMEDIATE 'GRANT UPDATE (Start_Date_Time, End_Date_Time, Start_Dock_ID, End_Dock_ID) ON RENTAL TO CustomerUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

END;