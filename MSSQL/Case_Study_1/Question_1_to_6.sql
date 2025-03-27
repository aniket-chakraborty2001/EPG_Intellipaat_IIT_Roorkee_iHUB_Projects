-- Use the assignments database
USE ASSIGNMENTS;
GO
-- =========================================================================================
GO
--------- Question-1: Display the number of states present in the LocationTable.
		  SELECT 
			COUNT(DISTINCT(State)) AS NumStates 
		  FROM LocationTable;
GO
--==========================================================================================
GO
--------- Question-2: How many products are of regular type?
		  SELECT 
			COUNT(*) AS NumRegularProduct	
		  FROM ProductTable WHERE Type = 'Regular';
GO
--==========================================================================================
GO
--------- Question-3: How much spending has been done on marketing of product ID 1
		  SELECT 
			ProductId, SUM(Marketing) AS TotalMarketPrice
		  FROM FactsTable
		  WHERE ProductId = 1 GROUP BY ProductId;
GO
--==========================================================================================
GO
--------- Question-4: What is the minimum sales of a product
		  SELECT
			MIN(Sales) AS MinSales
		  FROM FactsTable;

GO
--==========================================================================================
GO
--------- Question-5: Display the max Cost of Good Sold (COGS).
		  SELECT
			MAX(COGS) AS MaxGoldSold
		  FROM FactsTable;
GO
--==========================================================================================
GO
--------- Question-6: Display the details of the product where product type is coffee.
		  SELECT TOP 10
			F.Profit, F.Sales, F.Margin, F.COGS ,F.Total_Expenses, F.Marketing,
			F.Inventory, F.Budget_Profit, F.Budget_COGS, F.Budget_Margin, F.Budget_Sales,
			F.Area_Code, P.Product_Type
		  FROM  FactsTable F JOIN ProductTable P ON F.ProductId = P. ProductId 		  
		  WHERE P.Product_Type = 'Coffee';
GO