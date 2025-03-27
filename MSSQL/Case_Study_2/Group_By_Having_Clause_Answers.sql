-- Use the assignmet database
USE ASSIGNMENTS;
GO
--=======================================================================
GO
------- Question-1: List out the department wise maximum salary, minimum salary 
------- and average salary of the employees. 
		SELECT
			D.Department_Id, D.Name,
			MAX(E.Salary) AS MaxSalary,
			MIN(E.Salary) AS MinSalary,
			AVG(E.Salary) AS AvgSalary
		FROM Department D LEFT JOIN Employee E
		ON D.Department_Id = E.Department_Id
		GROUP BY D.Department_Id, D.Name;
GO
--=======================================================================
GO
------- Question-2: List out the job wise maximum salary, minimum salary 
------- and average salary of the employees. 
		SELECT
			J.Job_Id, 
			MIN(Salary) AS MinSalary,
			MAX(Salary) AS MaxSalary,
			AVG(Salary) AS AvgSalary
		FROM Employee E RIGHT JOIN Job J
		ON E.Job_Id = J.Job_Id
		GROUP BY J.Job_Id;
GO
--=======================================================================
GO
------- Question-3: List out the number of employees who joined each month 
------- in ascending order. 
		SELECT 
			MONTH(CAST(Hire_Date AS DATE)) AS JoinMonth,
			DATENAME(MONTH,CAST(Hire_Date AS DATE)) AS MonthName,
			COUNT(*) AS EmpCount
		FROM Employee
		GROUP BY MONTH(CAST(Hire_Date AS DATE)), DATENAME(MONTH,CAST(Hire_Date AS DATE))
		ORDER BY JoinMonth ASC;
GO
--=======================================================================
GO
------- Question-4: List out the number of employees for each month and year
------- in ascending order based on the year and month.
		SELECT 
			MONTH(CAST(Hire_Date AS DATE)) AS JoinMonth,
			YEAR(CAST(Hire_Date AS DATE)) AS JoinYear,
			DATENAME(MONTH,CAST(Hire_Date AS DATE)) AS MonthName,
			COUNT(*) AS EmpCount
		FROM Employee
		GROUP BY MONTH(CAST(Hire_Date AS DATE)), DATENAME(MONTH,CAST(Hire_Date AS DATE)),
		YEAR(CAST(Hire_Date AS DATE))
		ORDER BY JoinMonth ASC, JoinYear ASC;
GO
--=======================================================================
GO
------- Question-5: List out the Department ID having at least four employees.
		SELECT
			 Department_Id ,COUNT(*) AS EmpCount
		FROM Employee
		GROUP BY Department_Id
		HAVING COUNT(*) >= 4;
GO
--=======================================================================
GO
------- Question-6: How many employees joined in February month. 
		SELECT
			COUNT(*) AS FebEmpCount
		FROM Employee
		WHERE DATENAME(MONTH, CAST(Hire_Date AS DATE)) = 'February';
GO
--=======================================================================
GO
------- Question-7: How many employees joined in May or June month. 
		SELECT
			First_Name,Last_Name, COUNT(*) AS [May-JuneEmpCount]
		FROM Employee
		GROUP BY First_Name, Last_Name, MONTH(CAST(Hire_Date AS DATE))
		HAVING MONTH(CAST(Hire_Date AS DATE)) = 5 OR MONTH(CAST(Hire_Date AS DATE)) = 6; 
GO
--=======================================================================
GO
------- Question-8: How many employees joined in 1985?
		SELECT
			COUNT(*) AS EmpCount
		FROM Employee
		GROUP BY YEAR(CAST(Hire_Date AS DATE))
		HAVING YEAR(CAST(Hire_Date AS DATE)) = 1985;
GO
--=======================================================================
GO
------- Question-9: How many employees joined each month in 1985?
		SELECT
			COUNT(*) AS EmpCount, DATENAME(MONTH, CAST(Hire_Date AS DATE)) 
			AS JoinMonthName
		FROM Employee
		GROUP BY DATENAME(MONTH, CAST(Hire_Date AS DATE)), 
		YEAR(CAST(Hire_Date AS DATE))
		HAVING YEAR(CAST(Hire_Date AS DATE)) = 1985;
GO
--=======================================================================
GO
------- Question-10: How many employees were joined in April 1985?
		SELECT
			COUNT(*) AS AprilEmpCount
		FROM Employee
		WHERE YEAR(CAST(Hire_Date AS DATE)) = 1985 
			AND MONTH(CAST(Hire_Date AS DATE)) = 4;
GO
--=======================================================================
GO
------- Question-11: Find the Department ID having greater than or equal to
------- 3 employees joining in April 1985?
		SELECT 
			Department_Id, COUNT(*) AS EmpCount
		FROM Employee
		WHERE YEAR(CAST(Hire_Date AS DATE)) = 1985 AND MONTH(CAST(Hire_Date AS DATE)) = 4
		GROUP BY Department_Id
		HAVING COUNT(*) >= 3;
GO