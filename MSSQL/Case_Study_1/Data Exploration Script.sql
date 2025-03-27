-- Use the assignments database
USE ASSIGNMENTS;
GO
------- Check number of records in each table
GO
		SELECT COUNT(*) AS NumRecordFact FROM FactsTable ;
		SELECT COUNT(*) AS NumRecordLoca FROM LocationTable;
		SELECT COUNT(*) AS NumRecordProd FROM ProductTable;
GO
------- Check for the FactsTable, LocationTable and ProductTable tables
------- Get 5 records from each table
GO
		SELECT TOP 5  * FROM FactsTable;
		SELECT TOP 5 * FROM LocationTable;
		SELECT TOP 5 * FROM ProductTable;
GO
	