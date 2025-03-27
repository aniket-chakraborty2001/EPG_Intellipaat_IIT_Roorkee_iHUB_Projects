-- Use the 'Assignments' database
USE ASSIGNMENTS;

-- TASK TO PERFORM FOR ASSIGNEMT-1:
---- 3)Fetch the data where the Customer’s name is ending with ‘N’ also get the purchase 
------ amount value greater than 500
	   SELECT CustomerName, PurchaseAmount 
	   FROM Customer
	   WHERE CustomerName LIKE '%N' AND PurchaseAmount > 500;