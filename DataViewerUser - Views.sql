--View to retrieve most used payment methods
CREATE OR REPLACE VIEW Most_Used_Payment_Methods AS
SELECT 
    Payment_Method,
    COUNT(*) AS Usage_Count
FROM 
    BikeUser.Payment_Details
GROUP BY 
    Payment_Method
ORDER BY 
    Usage_Count DESC;


SELECT * FROM Most_Used_Payment_Methods;
------------------------------------------------
--Get Total Rentend Bikes by Customer


CREATE OR REPLACE VIEW Total_Rented_Bikes_By_Customer AS
SELECT 
    c.Customer_ID,
    c.First_Name,
    c.Last_Name,
    COUNT(r.Rental_ID) AS Total_Rented_Bikes
FROM 
    BikeUser.Customer_View_Limited c
JOIN 
    BikeUser.Rental r ON c.Customer_ID = r.Customer_ID
GROUP BY 
    c.Customer_ID, c.First_Name, c.Last_Name;

SELECT * FROM Total_Rented_Bikes_By_Customer
ORDER BY Total_Rented_Bikes DESC;

-----------------------------------------------------
--Get Payment Details along with Customer Name

CREATE OR REPLACE VIEW Customer_Payment_Information AS
SELECT 
    c.Customer_ID,
    c.First_Name || ' ' || c.Last_Name AS "Customer Name", 
    p.Transaction_ID,
    p.Date_Time,
    p.Payment_Method
FROM 
    BikeUser.Customer_View_Limited c
JOIN 
    BikeUser.Payment_Details p ON c.Customer_ID = p.Customer_ID;
    
SELECT * FROM Customer_Payment_Information;
--------------------------------------------------------    

-- View to get dock(s) from which maximum bikes were rented
CREATE OR REPLACE VIEW Most_Rented_Dock AS
SELECT 
    d.Dock_ID,
    d.Dock_Name,
    d.Dock_Location,
    COUNT(r.Rental_ID) AS Total_Rentals
FROM BikeUser.Docks d
JOIN BikeUser.Rental r ON d.Dock_ID = r.Start_Dock_ID
GROUP BY d.Dock_ID, d.Dock_Name, d.Dock_Location
HAVING COUNT(r.Rental_ID) = (
    SELECT MAX(Rental_Count)
    FROM (
        SELECT Start_Dock_ID, COUNT(*) AS Rental_Count
        FROM BikeUser.Rental
        GROUP BY Start_Dock_ID
    )
);
SELECT * FROM Most_Rented_Dock;

----------------------------------------------------------
-- Create view for total maintenance cost per bike
CREATE OR REPLACE VIEW Bike_Maintenance_Cost AS
SELECT 
    b.Bike_ID,
    bm.Bike_Brand_Name,
    bm.Bike_Model_Name,
    COUNT(m.Maintenance_ID) AS Total_Maintenance_Records,
    SUM(m.Repair_Cost) AS Total_Repair_Cost
FROM 
    BikeUser.Bike b
JOIN 
    BikeUser.Bike_Model bm ON b.Model_ID = bm.Model_ID
LEFT JOIN 
    BikeUser.Maintenance m ON b.Bike_ID = m.Bike_ID
GROUP BY 
    b.Bike_ID, bm.Bike_Brand_Name, bm.Bike_Model_Name;

SELECT * FROM Bike_Maintenance_Cost
ORDER BY Total_Repair_Cost DESC;
