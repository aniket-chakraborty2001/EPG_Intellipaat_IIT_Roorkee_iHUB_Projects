-- Use the assignments database
USE ASSIGNMENTS;
GO

-- check the JomatoSales table
SELECT TOP 10 * FROM JomatoSales;
GO

------ TASK TO PERFORM FOR ASSIGNMENT:3
GO

--- 3) Generate a row number column and find the top 5 areas with the 
------ highest rating of restaurants.GO	   SELECT TOP 5			RestaurantName, Area, ROUND(CAST(Rating AS float),2) AS Rating,			ROW_NUMBER() 			OVER(ORDER BY Rating DESC) AS RowNumber	   FROM JomatoSales;GO