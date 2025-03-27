-- Use the assignment database
USE ASSIGNMENTS;

-- Check for the Salesman, Customer and Orders table
SELECT * FROM Salesman;
SELECT * FROM Customer;
SELECT * FROM Orders;

-------- TASK TO PERFORM FROM ASSIGNMENT-1:
-------- 5) Display the below columns which has the matching data: Orderdate, 
----------- Salesman Name, Customer Name, Commission, and City which has the 
----------- range of Purchase Amount between 500 to 1500.
			SELECT O.Orderdate, S.Name, C.CustomerName, S.Commission, S.City
			FROM Orders O
			JOIN 
			Salesman S ON O.SalesmanId = S.SalesmanId
			JOIN 
			Customer C ON S.SalesmanId = C.SalesmanId
			WHERE C.PurchaseAmount BETWEEN 500 AND 1500;
