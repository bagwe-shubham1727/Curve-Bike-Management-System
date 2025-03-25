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
