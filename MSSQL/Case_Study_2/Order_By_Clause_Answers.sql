-- Use the assignments database
USE ASSIGNMENTS;
GO
--==============================================================================
GO
------- Question-1: List out the Employee ID and Last Name in ascending order 
------- based on the Employee ID.
		SELECT
			Employee_Id, Last_Name
		FROM Employee
		ORDER BY Employee_Id;
GO
--==============================================================================
GO
------- Question-2: List out the Employee ID and Name in descending order 
------- based on salary. 
		SELECT
			First_Name, Last_Name, Employee_Id, Salary
		FROM Employee
		ORDER BY Salary DESC;
GO
--==============================================================================
GO
------- Question-3: List out the employee details according to their Last 
------- Name in ascending-order. 
		SELECT
			First_Name, Last_Name, Employee_Id, Salary
		FROM Employee
		ORDER BY Last_Name;
GO
--==============================================================================
GO
------- Question-4: List out the employee details according to their Last Name 
------- in ascending order and then Department ID in descending order. 
		SELECT
			First_Name, Last_Name, Employee_Id, Department_Id
		FROM Employee
		ORDER BY Last_Name, Department_Id DESC;
GO