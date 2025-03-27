-- Use the assignments database
USE ASSIGNMENTS;
GO
--=======================================================================
GO
------- Question-19: If there is an increase in sales of 5%, calculate the increasedsales.
		SELECT TOP 10
			Sales, (Sales * 1.05) AS IncreasedSales
		FROM FactsTable;
GO
--=======================================================================
GO
------- Question-20: Find the maximum profit along with the product ID and product type
		SELECT
			F.ProductId, P.Product_Type, MAX(F.Profit) AS MaxProductProfit
		FROM FactsTable F
		JOIN ProductTable P ON F.ProductId = P.ProductId
		GROUP BY F.ProductId, P.Product_Type;
GO
--=======================================================================
GO
------- Question-21: Create a stored procedure to fetch the result according to 
------- the product type from ProductTable.
		CREATE PROC USP_ProductType
		@ProductType VARCHAR(50)
		AS
		(
		SELECT F.*, P.Product_Type
		FROM FactsTable F JOIN ProductTable P ON F.ProductId = P.ProductId
		WHERE P.Product_Type = @ProductType
		);

		EXEC USP_ProductType 'Coffee';
GO
--=======================================================================
GO
------- Question-22: Write a query by creating a condition in which if the total expenses 
 ------ is less than 60 then it is a profit or else loss.
		SELECT TOP 10
			Total_Expenses, Feedback = 
				CASE
				WHEN Total_Expenses < 60 THEN 'Profit'
				ELSE 'Loss'
				END
		FROM FactsTable;
GO
--=======================================================================
GO
------- Question-23: Give the total weekly sales value with the date and product ID 
------- details. Use roll-up to pull the data in hierarchical order.
		SELECT 
			DATEPART(WEEK, Date) AS SalesWeek,
			ProductId,
			SUM(Sales) AS TotalWeeklySales
		FROM FactsTable
		GROUP BY ROLLUP (DATEPART(WEEK, Date), ProductId)
		ORDER BY SalesWeek, ProductId;
GO
--=======================================================================
GO
------- Question-24: Apply union and intersection operator on the tables which consist of
 ------ attribute area code.
		SELECT  Area_Code FROM FactsTable
		UNION
		SELECT Area_Code FROM LocationTable; ---Result in 156 Rows
GO
		SELECT  Area_Code FROM FactsTable
		INTERSECT
		SELECT Area_Code FROM LocationTable; ---Result in 156 Rows
GO