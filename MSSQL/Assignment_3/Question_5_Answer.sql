-- Use the assignments database
USE ASSIGNMENTS;
GO

-- check the JomatoSales table
SELECT TOP 10 * FROM JomatoSales;
GO

------ TASK TO PERFORM FOR ASSIGNMENT:3
GO

--- 5) Write a query to Create a Top rating view to store the generated top 
------ 5 highest rating of restaurants.GO	   CREATE VIEW VW_TopFiveRatedRestaurant	   AS	   SELECT TOP 5			RestaurantName, Rating, No_of_Rating 	   FROM JomatoSales 	   ORDER BY Rating DESC, No_of_Rating DESC;GO	   SELECT * FROM VW_TopFiveRatedRestaurant;  