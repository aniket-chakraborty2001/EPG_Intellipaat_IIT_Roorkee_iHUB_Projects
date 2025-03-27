-- Use the assignment database
USE ASSIGNMENTS;

-- Check for the JomatoSales table
SELECT TOP 10 * FROM JomatoSales;

------------- TASK TO PERFORM FOR ASSIGNMENT-2:

---------- 5) Display the restaurant type and total average cost using roll up
			  SELECT
				RestaurantType,
				SUM(AverageCost) AS TotalAvgCost
			  FROM JomatoSales
			  GROUP BY ROLLUP(RestaurantType);