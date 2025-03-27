-- Use the Assignments database
USE ASSIGNMENTS;
GO
--============================================================================
GO
------- Question-25:  Create a user-defined function for the product table to 
------- fetch a particular product type based upon the user’s preference.
		CREATE FUNCTION DBO.FN_FetchProductType
		(@Input VARCHAR(30))
		RETURNS TABLE AS
		RETURN
		(
		SELECT * FROM ProductTable WHERE Product_Type = @Input
		);
GO
		SELECT * FROM dbo.FN_FetchProductType('Coffee');
GO
--============================================================================
GO
------- Question-26: Change the product type from coffee to tea where product ID 
------- is 1 and undo it.
		BEGIN TRANSACTION
		UPDATE ProductTable
		SET Product_Type = 'Tea' WHERE ProductId = 1;
		SELECT * FROM ProductTable WHERE ProductId = 1;
GO
		ROLLBACK TRANSACTION
		SELECT * FROM ProductTable WHERE ProductId = 1;
GO
--============================================================================
GO
------- Question-27: Display the date, product ID and sales where total expenses are
------- between 100 to 200
		SELECT
			Date, ProductId, Sales
		FROM FactsTable
		WHERE Total_Expenses BETWEEN 100 AND 200;
GO
--============================================================================
GO
------- Question-28: Delete the records in the Product Table for regular type.
		DELETE FROM ProductTable
		WHERE Product_Type = 'Regular';
		SELECT DISTINCT(Product_Type) FROM ProductTable;
GO
--============================================================================
GO
------- Question-29:  Display the ASCII value of the fifth character from the 
------- Product column
		SELECT 
			Product, SUBSTRING(Product, 5,1) AS FifthChar, 
			ASCII(SUBSTRING(Product,5,1)) AS FifthAsciiValue
		FROM ProductTable;
GO