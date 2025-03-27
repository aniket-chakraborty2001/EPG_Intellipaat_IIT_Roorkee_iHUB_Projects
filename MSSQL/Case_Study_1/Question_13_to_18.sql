-- Use the assignment database
USE ASSIGNMENTS;
GO
--====================================================================
GO
------- Question-13: What is the total sales done on date 2010-01-01
		SELECT
			SUM(Sales) AS TotalSales
		FROM FactsTable
		WHERE Date = '2010-01-01';
GO
--====================================================================
GO
------- Question-14: Display the average total expense of each product ID on an 
------- individual date
		SELECT
			ProductId, Date, AVG(Total_Expenses) AS AvgTotalExpense
		FROM FactsTable
		GROUP BY ProductId, Date
		ORDER BY ProductId, Date;
GO
--===================================================================
GO
------- Question-15: Display the table with the following attributes such as 
------- date, productID, product_type, product, sales, profit, state, area_code
		SELECT TOP 10
			F.Date, F.ProductId, P.Product_Type, P.Product, F.Sales, F.Profit,
			L.State, F.Area_Code
		FROM FactsTable F JOIN LocationTable L ON F.Area_Code = L.Area_Code
		JOIN ProductTable P ON F.ProductId = P.ProductId;
GO
--===================================================================
GO
------- Question-16: Display the rank without any gap to show the sales wiserank.
		SELECT 
			ProductID, 
			Sales, 
		DENSE_RANK() OVER (ORDER BY Sales DESC) AS Sales_Rank
		FROM FactsTable;
GO
--===================================================================
GO
------- Question-17: Find the state wise profit and sales.
		SELECT 
			L.State, 
			SUM(F.Sales) AS Total_Sales, 
			SUM(F.Profit) AS Total_Profit
		FROM FactsTable F
		JOIN LocationTable L ON F.Area_Code = L.Area_Code
		GROUP BY L.State
		ORDER BY Total_Sales DESC;
GO
--===================================================================
GO
------- Question-18: Find the state wise profit and sales along with the productname.
		SELECT 
			L.State, 
			SUM(F.Sales) AS Total_Sales, 
			SUM(F.Profit) AS Total_Profit,
			P.Product
		FROM FactsTable F
		JOIN LocationTable L ON F.Area_Code = L.Area_Code
		JOIN ProductTable P ON F.ProductId = P.ProductId
		GROUP BY L.State, P.Product
		ORDER BY Total_Sales DESC;
GO