-- Use the assignments database
USE ASSIGNMENTS;

-- Check for the Salesman, Customer and Orders table
SELECT * FROM Salesman;
SELECT * FROM Customer;
SELECT * FROM Orders;

------- TASK TO PERFORM FROM ASSIGNMENT-1:
------- 4A) Using SET operators, retrieve the first result with unique SalesmanId  
----------- values from two tables: Salesman and Customer table
			SELECT TOP 1 SalesmanId
			FROM (
			SELECT SalesmanId FROM Salesman
			UNION
			SELECT SalesmanId FROM Customer
			) 
			AS UniqueSalesmanIds;

------- 4B) Second result containing SalesmanId with duplicates from two tables. The
----------- tables are: Salesman and Customer table
			SELECT SalesmanId FROM Salesman
			UNION ALL
			SELECT SalesmanId FROM Customer;