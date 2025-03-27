-- Use the assignment database
USE ASSIGNMENTS;
GO
--==================================================================
GO
------- Question-1: Display the employees list who got the maximum salary
		SELECT
			First_Name, Last_Name, Employee_Id, Salary
		FROM Employee
		WHERE Salary = 
		(SELECT MAX(Salary) FROM Employee);
GO
--==================================================================
GO
------- Question-2: Display the employees who are working in the sales 
------- department. 
		SELECT
			First_Name, Last_Name, Employee_Id, Salary
		FROM Employee
		WHERE Department_Id = 
		(SELECT Department_Id FROM Department WHERE Name = 'Sales');
GO
--==================================================================
GO
------- Question-3: Display the employees who are working as 'Clerk'.
		SELECT
			First_Name, Last_Name, Employee_Id
		FROM Employee
		WHERE Job_Id = 
		(SELECT Job_Id FROM Job WHERE Designation = 'Clerk');
GO
--==================================================================
GO
------- Question-4: Display the list of employees who are living in 
------- 'Boston'.
		SELECT 
			First_Name, Last_Name, Employee_Id
		FROM Employee 
		WHERE Department_Id IN 
			(SELECT Department_Id FROM Department 
			WHERE Location_Id IN 
				(SELECT Location_Id 
				FROM Location 
				WHERE City = 'Boston'));
GO
--==================================================================
GO
------- Question-5: Find out the number of employees working in the sales 
------- department. 
		SELECT
			COUNT(*) AS SalesNumEmp
		FROM Employee
		WHERE Department_Id = 
		(SELECT Department_Id FROM Department WHERE Name = 'Sales');
GO
--==================================================================
GO
------- Question-6: Update the salaries of employees who are working as 
------- clerks on the basis of 10%.
		BEGIN TRANSACTION
		UPDATE Employee
		SET Salary = 1.1 * Salary
		WHERE Job_Id = 
		(SELECT Job_Id FROM Job WHERE Designation = 'Clerk');
		SELECT * FROM Employee;
		ROLLBACK TRANSACTION
GO
--==================================================================
GO
------- Question-7: Display the second highest salary drawing employee 
------- details. 
		SELECT
			First_Name, Last_Name, Employee_Id, Salary
		FROM Employee 
		WHERE Salary = (
		SELECT MAX(Salary) FROM Employee 
		WHERE Salary < (SELECT MAX(Salary) FROM Employee));
GO
--==================================================================
GO
------- Question-8: List out the employees who earn more than every employee in 
------- department 30. 
		SELECT 
			First_Name, Last_Name, Employee_Id
		FROM Employee 
		WHERE Salary > 
		(SELECT MAX(Salary) FROM Employee WHERE Department_Id = 30);
GO
--==================================================================
GO
------- Question-9: Find out which department has no employees. 
		SELECT Department_Id, Name
		FROM Department 
		WHERE Department_Id NOT IN 
		(SELECT DISTINCT Department_Id FROM Employee);
GO
--==================================================================
GO
------- Question-10: Find out the employees who earn greater than the 
------- average salary for their department.
		SELECT 
			E1.First_Name, E1.Last_Name, E1.Employee_Id
		FROM Employee E1
		WHERE Salary > 
		(SELECT AVG(Salary) FROM Employee E2
		WHERE E1.Department_Id = E2.Department_Id);
GO