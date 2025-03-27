-- Use the assignments database
USE ASSIGNMENTS;
GO

-- Check for the Rating column of the JomatoSales table
SELECT TOP 10 Rating FROM JomatoSales;
GO

-------- TASK TO PERFORM FOR ASSIGNMENT-2:
GO

----- 4A) Find Ceil, floor and absolute values of the rating column 
		 SELECT TOP 10
				ROUND(CAST(Rating AS FLOAT),2) AS Rating, 
				CEILING(Rating) AS Ceil_Value,
				FLOOR(Rating) AS Floor_Value, 
				ROUND(ABS(CAST(Rating AS FLOAT)),2) AS Absolute_Value
		 FROM JomatoSales;
GO

----- 4B) Display the current date and separatelty display the year
-----     month_name and day
		  SELECT 
			CONVERT(DATE, GETDATE()) AS CurrentDate,
			DATEPART(YEAR, GETDATE()) AS CurrentYear,
			DATENAME(MONTH, GETDATE()) AS Month_Name,
			DATEPART(DAY, GETDATE()) AS DayNum;
GO