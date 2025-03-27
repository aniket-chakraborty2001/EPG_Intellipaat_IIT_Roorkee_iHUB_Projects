-- Use the assignments database
USE ASSIGNMENTS;
GO

-- check the JomatoSales table
SELECT TOP 10 * FROM JomatoSales;
GO

------ TASK TO PERFORM FOR ASSIGNMENT:3
GO

--- 6) Write a trigger that sends an email notification to the restaurant owner whenever a new record is inserted.
GO
	--- Audit table creation
		CREATE TABLE AuditLog (
		LogId INT PRIMARY KEY IDENTITY(1,1),
		LogMessage VARCHAR(MAX),
		LogDate DATETIME DEFAULT GETDATE());
GO
    --- Create the Trigger as TG_Jomato_Insert
	    CREATE TRIGGER TG_Jomato_Insert ON JomatoSales
		FOR INSERT
		AS
		BEGIN
			DECLARE @Name VARCHAR(100), @Place VARCHAR(100), @Rating FLOAT;
			SELECT
			@Name = RestaurantName , @Place = Area, @Rating = Rating FROM INSERTED;
			INSERT INTO AuditLog(LogMessage) VALUES
			('Dear owner, a new restaurant named ' + @Name + ' is opened near ' + @Place + 
			' having a rating of ' + CAST(@Rating AS VARCHAR))
	    END;
GO
	--- Insert a new record in the JomatoSales table
		INSERT INTO JomatoSales VALUES
		(7105,'Oasis', 'Casual Dinning', 4.2000000000, 1230, 365, 1, 0, 'All types',
		'Park Street', 'Kolkata', '58');
		INSERT INTO JomatoSales VALUES
		(7106,'DBapi Biriyani House', 'Casual Dinning', 3.6000000000, 1030, 315, 
		1, 0, 'All types', 'Sodepur More', 'Kolkata', '52');
GO
	--- Check the AuditLog Table
	    SELECT * FROM AuditLog;
	   

	   