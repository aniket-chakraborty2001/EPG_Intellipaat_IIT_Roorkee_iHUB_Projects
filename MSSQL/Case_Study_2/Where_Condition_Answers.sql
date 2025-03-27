-- Use the assignment database
USE ASSIGNMENTS;
GO
--=================================================================
GO
------- Question-1: List the details about "Smith"
		SELECT 
			E.Employee_Id, E.First_Name, E.Last_Name, E.Job_Id, E.Hire_Date, E.Salary, E.Comm,
			J.Designation, D.Department_Id, D.Name, 
			L.Location_Id, L.City
		FROM Employee E 
		FULL JOIN Job J ON E.Job_Id = J.Job_Id
		FULL JOIN Department D ON E.Department_Id = D.Department_Id
		FULL JOIN Location L ON D.Location_Id = L.Location_Id
		WHERE E.Last_Name = 'Smith';
GO
--=================================================================
GO
------- Question-2: List out the employees who are working in department 20
		SELECT
			E.First_Name, E.Last_Name, E.Department_Id
		FROM Employee E
		WHERE E.Department_Id = 20;
GO
--=================================================================
GO
------- Question-3: List out the employees who are earning salary between 2000 and 3000
		SELECT
			First_Name, Last_Name, Salary
		FROM Employee
		WHERE Salary BETWEEN 2000 AND 3000;
GO
--=================================================================
GO
------- Question-4: List out the employees who are working in department 10 or 20
		SELECT
			First_Name, Last_Name, Department_Id
		FROM Employee
		WHERE Department_Id = 10 OR Department_Id = 20;
GO
--================================================================
GO
------- Question-5: Find out the employees who are not working in department 10 or 30
		SELECT
			First_Name, Last_Name, Department_Id
		FROM Employee
		WHERE Department_Id NOT IN (10,30);
--================================================================
GO
------- Question-6: List out the employees whose name starts with 'L'
		SELECT
			First_Name, Last_Name
		FROM Employee
		WHERE First_Name LIKE 'L%';
GO
--================================================================
GO
------- Question-7: List out the employees whose name starts with 'L' and ends with 'E'
		SELECT
			First_Name, Last_Name
		FROM Employee
		WHERE First_Name LIKE 'L%%E';
GO
--================================================================
GO
------- Question-8: List out the employees whose name length is 4 and start with 'J'
		SELECT
			First_Name, Last_Name
		FROM Employee
		WHERE First_Name LIKE 'J%' AND LEN(First_Name) = 4;
GO
--================================================================
GO
------- Question-9: List out the employees who are working in department 30 and draw the 
------- salaries more than 2500.
		SELECT
			First_Name, Last_Name, Salary, Department_Id
		FROM Employee
		WHERE Department_Id = 30 AND Salary > 2500;
GO
--================================================================
GO
------- Question-10: List out the employees who are not receiving commission
		SELECT
			First_Name, Last_Name, Comm
		FROM Employee
		WHERE Comm IS NULL;
GO