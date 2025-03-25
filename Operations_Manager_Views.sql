CREATE OR REPLACE VIEW View_Least_Rented_Dock_Location AS
SELECT Dock_Location,
       Total_Rentals
FROM (
    SELECT d.Dock_Location,
           COUNT(r.Rental_ID) AS Total_Rentals
    FROM BikeUser.Rental r
    JOIN BikeUser.DOCKS d ON r.Start_Dock_ID = d.Dock_ID
    GROUP BY d.Dock_Location
) dock_rental_summary
WHERE Total_Rentals = (
    SELECT MIN(Rental_Count) FROM (
        SELECT COUNT(r2.Rental_ID) AS Rental_Count
        FROM BikeUser.Rental r2
        JOIN BikeUser.DOCKS d2 ON r2.Start_Dock_ID = d2.Dock_ID
        GROUP BY d2.Dock_Location
    )
);


CREATE OR REPLACE VIEW View_Total_Customers AS
SELECT COUNT(*) AS Total_Customers
FROM BikeUser.Customer;


CREATE OR REPLACE VIEW View_Customer_Rental_Trips AS
SELECT 
    c.Customer_ID,
    c.First_Name,
    c.Last_Name,
    COUNT(r.Rental_ID) AS Total_Trips
FROM 
    BikeUser.Customer c
LEFT JOIN 
    BikeUser.Rental r ON c.Customer_ID = r.Customer_ID
GROUP BY 
    c.Customer_ID, c.First_Name, c.Last_Name;
    

