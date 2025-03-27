-- Use the Assignments database
USE ASSIGNMENTS;
GO
--==================================================================
GO
------- Question-1: List out employees with their department names
		SELECT
			E.First_Name, E.Last_Name, E.Department_Id, D.Name
		FROM Employee E JOIN Department D 
		ON E.Department_Id = D.Department_Id
		ORDER BY Department_Id;
GO
--==================================================================
GO
------- Question-2: Display employees with their designations
		SELECT
			E.First_Name, E.Last_Name, E.Job_Id, J.Designation
		FROM Employee E JOIN Job J 
		ON E.Job_Id = J.Job_Id
		ORDER BY Job_Id;
GO
--==================================================================
GO
------- Question-3: Display the employees with their department names and city
		SELECT
			E.First_Name, E.Last_Name, D.Name, L.City
		FROM  Employee E 
		JOIN Department D ON E.Department_Id = D.Department_Id
		JOIN Location L ON L.Location_Id = D.Location_Id;
GO
--=================================================================
GO
------- Question-4: How many employees are working in different departments? 
------- Display with department names. 
		SELECT
			D.Name, D.Department_Id, COUNT(E.Employee_Id) AS NumEmployee
		FROM Employee E JOIN Department D ON E.Department_Id = D.Department_Id
		GROUP BY D.Name, D.Department_Id
		ORDER BY NumEmployee;
GO
--=================================================================
GO
------- Question-5: How many employees are working in the sales department
		SELECT
			COUNT(E.Employee_Id) AS NumEmployee
		FROM Employee E JOIN Department D ON E.Department_Id = D.Department_Id
		GROUP BY D.Name, D.Department_Id
		HAVING D.Name = 'Sales';
GO
--=================================================================
GO
------- Question-6: Which is the department having greater than or equal to 3 
------- employees and display the department names in ascending order. 
		SELECT 
			D.Name
		FROM Department D JOIN Employee E ON D.Department_Id = E.Department_Id
		GROUP BY D.Name
		HAVING COUNT(E.Employee_Id) >= 3
		ORDER BY D.Name ASC;
GO
--=================================================================
GO
------- Question-7: How many employees are working in 'Dallas'?
		SELECT
			COUNT(E.Employee_Id) AS DallasEmpCount
		FROM Employee E 
		JOIN Department D ON E.Department_Id = D.Department_Id
		JOIN Location L ON L.Location_Id = D.Location_Id
		WHERE L.City = 'Dallas';
GO
--=================================================================
GO
------- Question-8: Display all employees in sales or operation departments. 
		SELECT
			E.Employee_Id, E.First_Name, E.Last_Name, D.Name
		FROM Employee E 
		JOIN Department D ON E.Department_Id = D.Department_Id
		WHERE D.Name = 'Sales' OR D.Name = 'Operations';
GO