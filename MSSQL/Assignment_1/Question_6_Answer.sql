-- Use the assignment database
USE ASSIGNMENTS;

-- Check for the Salesman, Customer and Order table
SELECT * FROM Salesman;
SELECT * FROM Customer;
SELECT * FROM Orders;

----------- TASK TO PERFORM FROM ASSIGNMENT-1:
-------------- 6) Using right join fetch all the results from Salesman and 
----------------- Orders table
				  SELECT S.SalesmanId, S.Name, S.Commission, S.City, S.Age, 
						 O.OrderId, O.Orderdate
				  FROM Salesman S
				  RIGHT JOIN Orders O
				  ON S.SalesmanId = O. SalesmanId;