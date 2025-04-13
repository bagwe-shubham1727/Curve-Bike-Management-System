--Grant read-only access to DataViewerUser

CREATE OR REPLACE VIEW Customer_View_Limited AS
SELECT 
    Customer_ID, 
    First_Name, 
    Last_Name, 
    Email, 
    Phone, 
    City, 
    State_Code
FROM 
    BikeUser.Customer;
    
CREATE OR REPLACE VIEW Employee_View_Limited AS
SELECT 
    Employee_ID, 
    First_Name, 
    Last_Name, 
    Email, 
    Phone, 
    City, 
    State_Code
FROM 
    BikeUser.Employee;

DECLARE
    table_or_view_not_exist EXCEPTION;
    PRAGMA EXCEPTION_INIT(table_or_view_not_exist, -942); -- Error code for "table or view does not exist"
BEGIN
    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON Customer_View_Limited TO DataViewerUser';
    EXCEPTION
        WHEN table_or_view_not_exist THEN NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON Employee_View_Limited TO DataViewerUser';
    EXCEPTION
        WHEN table_or_view_not_exist THEN NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON BikeUser.Payment_Details TO DataViewerUser';
    EXCEPTION
        WHEN table_or_view_not_exist THEN NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON BikeUser.Bike_Model TO DataViewerUser';
    EXCEPTION
        WHEN table_or_view_not_exist THEN NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON BikeUser.Docks TO DataViewerUser';
    EXCEPTION
        WHEN table_or_view_not_exist THEN NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON BikeUser.Accessory TO DataViewerUser';
    EXCEPTION
        WHEN table_or_view_not_exist THEN NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON BikeUser.Bike TO DataViewerUser';
    EXCEPTION
        WHEN table_or_view_not_exist THEN NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON BikeUser.Maintenance TO DataViewerUser';
    EXCEPTION
        WHEN table_or_view_not_exist THEN NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON BikeUser.Bike_Accessory TO DataViewerUser';
    EXCEPTION
        WHEN table_or_view_not_exist THEN NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON BikeUser.Rental TO DataViewerUser';
    EXCEPTION
        WHEN table_or_view_not_exist THEN NULL;
    END;

    -- Reports
    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON Monthly_Rentals_Report TO DataViewerUser';
    EXCEPTION
        WHEN table_or_view_not_exist THEN NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON Top_Rented_Bikes TO DataViewerUser';
    EXCEPTION
        WHEN table_or_view_not_exist THEN NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON Customer_Activity_Report TO DataViewerUser';
    EXCEPTION
        WHEN table_or_view_not_exist THEN NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON Dock_Bike_Availability TO DataViewerUser';
    EXCEPTION
        WHEN table_or_view_not_exist THEN NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'GRANT SELECT ON Maintenance_Recent_Report TO DataViewerUser';
    EXCEPTION
        WHEN table_or_view_not_exist THEN NULL;
    END;
END;
/
