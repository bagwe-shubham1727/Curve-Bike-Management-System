-- View 1: Total number of bikes currently in maintenance
-- This counts distinct Bike_IDs in the Maintenance table
CREATE OR REPLACE VIEW v_qa_bikes_in_maintenance AS
SELECT COUNT(DISTINCT Bike_ID) AS total_bikes_in_maintenance
FROM BikeUser.Maintenance;

SELECT * FROM v_qa_bikes_in_maintenance;

-- View 2: Most frequently repaired bike(s)
-- This finds the bike(s) with the highest number of maintenance records
CREATE OR REPLACE VIEW v_qa_most_repaired_bike AS
SELECT Bike_ID, COUNT(*) AS total_repairs
FROM BikeUser.Maintenance
GROUP BY Bike_ID
HAVING COUNT(*) = (
    SELECT MAX(repair_count)
    FROM (
        SELECT COUNT(*) AS repair_count
        FROM BikeUser.Maintenance
        GROUP BY Bike_ID
    )
);

SELECT * FROM v_qa_most_repaired_bike;


-- View 3: Accessory details associated with each bike
-- This view links Bike, Accessory, and Bike_Model tables to show useful info
CREATE OR REPLACE VIEW v_qa_bike_accessory_details AS
SELECT 
    ba.Bike_ID,
    ba.Item_ID,
    a.Item_Name,
    bm.Bike_Brand_Name
FROM 
    BikeUser.Bike_Accessory ba
JOIN 
    BikeUser.Accessory a ON ba.Item_ID = a.Item_ID
JOIN 
    BikeUser.Bike b ON ba.Bike_ID = b.Bike_ID
JOIN 
    BikeUser.Bike_Model bm ON b.Model_ID = bm.Model_ID;


