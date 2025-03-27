-- Use the assignments database
USE ASSIGNMENTS;
GO

-- Check the JomatoSales table
SELECT TOP 10 * FROM JomatoSales;
GO

-------- TASK TO PERFORM FOR ASSIGNMENT:-2
GO

----- 2) Use the function to display the restaurant name and cuisine type which
-----    has the maximum number of rating. 
GO
		 SELECT 
			RestaurantName, CuisinesType
		 FROM JomatoSales
		 WHERE 
			No_of_Rating = (SELECT MAX(No_of_Rating) FROM JomatoSales);
GO