DECLARE
    table_not_exist EXCEPTION;
    PRAGMA EXCEPTION_INIT(table_not_exist, -942); -- Error code for "table or view does not exist"
BEGIN
    BEGIN
        EXECUTE IMMEDIATE 'GRANT INSERT, SELECT, UPDATE ON MAINTENANCE TO QualityAssuranceUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON ACCESSORY TO QualityAssuranceUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON DOCKS TO QualityAssuranceUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON BIKE_ACCESSORY TO QualityAssuranceUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON BIKE TO QualityAssuranceUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON BIKE_MODEL TO QualityAssuranceUser';
    EXCEPTION
        WHEN table_not_exist THEN
            NULL;
    END;
END;
/
