-- Use the assignments database
USE ASSIGNMENTS;
GO
-- Check for the JomatoSales table
SELECT TOP 10 * FROM JomatoSales;
GO
------ TASK TO PERFORM FOR ASSIGNMENT-3:
GO
--- 1) Create a stored procedure to display the restaurant name, type and Cuisine
----   where the table booking is not zero.	   CREATE PROC USP_FilterNonZeroBooking	   @input BIT	   AS	   (	   SELECT 			RestaurantName, RestaurantType, CuisinesType 	   FROM JomatoSales	   WHERE TableBooking = @input	   );GO	   EXEC USP_FilterNonZeroBooking 1;