-- Use the assignments database
USE ASSIGNMENTS;
GO

-- check the JomatoSales table
SELECT TOP 10 * FROM JomatoSales;
GO

------ TASK TO PERFORM FOR ASSIGNMENT:3
GO

----------- 4) Use the while loop to display the 1 to 50
GO
			   DECLARE @StartNum INT = 1
			   WHILE @StartNum <= 50 
			   BEGIN
			   PRINT @StartNum 
			   SET @StartNum = @StartNum + 1
			   END;
GO