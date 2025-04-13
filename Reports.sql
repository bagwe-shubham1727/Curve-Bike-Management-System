
-- 1. Monthly Rentals Report
CREATE OR REPLACE VIEW Monthly_Rentals_Report AS
SELECT 
    TO_CHAR(Start_Date_Time, 'YYYY-MM') AS Rental_Month,
    COUNT(*) AS Total_Rentals
FROM Rental
GROUP BY TO_CHAR(Start_Date_Time, 'YYYY-MM')
ORDER BY Rental_Month DESC;
/

-- 2. Top 5 Most Rented Bikes
CREATE OR REPLACE VIEW Top_Rented_Bikes AS
SELECT 
    Bike_ID,
    COUNT(*) AS Rental_Count
FROM Rental
GROUP BY Bike_ID
ORDER BY Rental_Count DESC
FETCH FIRST 5 ROWS ONLY;
/

-- 3. Customer Activity Summary
CREATE OR REPLACE VIEW Customer_Activity_Report AS
SELECT 
    C.Customer_ID,
    C.First_Name || ' ' || C.Last_Name AS Full_Name,
    COUNT(R.Rental_ID) AS Total_Rentals
FROM Customer C
JOIN Rental R ON C.Customer_ID = R.Customer_ID
GROUP BY C.Customer_ID, C.First_Name, C.Last_Name
ORDER BY Total_Rentals DESC;
/

-- 4. Bike Availability by Dock
CREATE OR REPLACE VIEW Dock_Bike_Availability AS
SELECT 
    D.Dock_ID,
    D.Dock_Location,
    COUNT(B.Bike_ID) AS Available_Bikes
FROM Docks D
LEFT JOIN Bike B ON D.Dock_ID = B.Dock_ID AND B.Rental_Status = 'N'
GROUP BY D.Dock_ID, D.Dock_Location
ORDER BY Available_Bikes DESC;
/

-- 5. Recently Maintained Bikes Report
CREATE OR REPLACE VIEW Maintenance_Recent_Report AS
SELECT 
    B.Bike_ID,
    BM.Model_ID,
    M.Date_Time AS Maintenance_Date,
    M.Maintenance_Description
FROM Bike B
JOIN Maintenance M ON B.Bike_ID = M.Bike_ID
JOIN Bike_Model BM ON B.Model_ID = BM.Model_ID
WHERE M.Date_Time >= ADD_MONTHS(SYSDATE, -3)
ORDER BY M.Date_Time DESC;
/
