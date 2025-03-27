-- Use the assignments database
USE ASSIGNMENTS;
GO

-- Check the JomatoSales table
SELECT TOP 10 * FROM JomatoSales;
GO

-------- TASK TO PERFORM FOR ASSIGNMENT:-2
GO

----- 1) Create a user-defined functions to stuff the Chicken into ‘Quick Bites’. Eg: ‘Quick
-----    Chicken Bites’
GO
		 CREATE FUNCTION DBO.FN_ChickenBites
		 (@InputString VARCHAR(MAX))
		 RETURNS VARCHAR(MAX)
		 AS
		 BEGIN
			DECLARE @OutputString VARCHAR(MAX)
			SET @OutputString = REPLACE(@InputString, 'Bites', 'Chicken Bites')
			RETURN @OutputString 
		 END;
GO

		 SELECT TOP 10 
		 dbo.FN_ChickenBites(RestaurantType) AS ModifiedResType
		 FROM JomatoSales
		 WHERE RestaurantType = 'Quick Bites';
GO
