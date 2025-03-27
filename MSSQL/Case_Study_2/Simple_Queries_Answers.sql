-- Use the ssignment database
USE ASSIGNMENTS;
GO
--======================================================================
GO
------- Question-1: List all the employee details
		SELECT * FROM Employee;
GO
--======================================================================
GO
------- Question-2: List all the department details
		SELECT * FROM Department;
GO
--======================================================================
GO
------- Question-3: List all job details
		SELECT * FROM Job;
GO
--======================================================================
GO
------- Question-4: List all the locations
		SELECT * FROM Location;
GO
--=======================================================================
GO
------- Question-5: List out the First Name, Last Name, Salary, Commission 
------- for all Employees. 
		SELECT
			First_Name, Last_Name, Salary, Comm
		FROM Employee;
GO
--=======================================================================
GO
------- Question-6: List out the Employee ID, Last Name, Department ID for 
------- all employees and alias Employee ID as "ID of the Employee", Last Name 
------- as "Name of the Employee", Department ID as "Dep_id".
		SELECT
			Employee_Id AS [ID of the Employee],
			Last_Name AS [Name of the Employee],
			Department_Id AS Dep_id
		FROM Employee;
GO
--=======================================================================
GO
------- Question-7: List out the annual salary of the employees with their names 
------- only
		SELECT
			First_Name, Last_Name, Salary
		FROM Employee;
GO