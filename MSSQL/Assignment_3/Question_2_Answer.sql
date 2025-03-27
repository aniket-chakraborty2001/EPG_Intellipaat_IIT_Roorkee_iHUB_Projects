-- Use the assignments database
USE ASSIGNMENTS;
GO

-- Check for the JomatoSales table
SELECT TOP 10 * FROM JomatoSales;
GO

-------- TASK TO PERFORM FOR ASSIGNMENT-3:
GO

----- 2) Create a transaction and update the cuisine type ‘Cafe’ to ‘Cafeteria’. 
-------- Check the result and rollback it
		 BEGIN TRANSACTION;

		 UPDATE JomatoSales 
		 SET CuisinesType = 'Cafeteria' 
		 WHERE CuisinesType = 'Cafe';

		 SELECT TOP 5 RestaurantName, RestaurantType, CuisinesType 
		 FROM JomatoSales 
		 WHERE CuisinesType = 'Cafeteria';

		 ROLLBACK TRANSACTION;

		 SELECT TOP 5 RestaurantName, RestaurantType, CuisinesType 
		 FROM JomatoSales 
		 WHERE CuisinesType = 'Cafe'; 
GO


