-- Use the Assignment Database
USE ASSIGNMENTS;

-- Check for the JomatoSales table
SELECT TOP 10 * FROM JomatoSales;

-------- TASK TO PERFORM FOR ASSIGNMENT-2:

----- 3) Create a Rating Status column to display the rating as ‘Excellent’ if it has more 
-----    than 4 start rating, ‘Good’ if it has above 3.5 and below 4 star rating, 'Average'
-----    if it above 3 star and below 3.5 star rating and 'Bad' if it is below 3 star rating
		 SELECT TOP 10
			ROUND(CAST(Rating AS FLOAT),2) AS Rating,
			RatingStatus = 
			CASE
			WHEN Rating > 4 THEN 'Excellent'
			WHEN Rating BETWEEN 3.5 AND 4 THEN 'Good'
			WHEN Rating BETWEEN 3 AND 3.5 THEN 'Average'
			ELSE 'Bad'
			END
			FROM JomatoSales;
		 