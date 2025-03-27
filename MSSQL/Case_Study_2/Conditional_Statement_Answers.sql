-- Use the Assignments database
USE ASSIGNMENTS;
GO
--=========================================================================
GO
------- Question-1: Display the employee details with salary grades. Use 
------- conditional statement to create a grade column.
		SELECT Salary, Grade = 
		CASE
		WHEN Salary < 1200 THEN 'C'
		WHEN Salary BETWEEN 1201 AND 2300 THEN 'B'
		ELSE 'A'
		END
		FROM Employee ORDER BY Grade;
GO
--=========================================================================
GO
------- Question-2: List out the number of employees grade wise. Use 
------- conditional statement to create a grade column. 
		SELECT 
			CASE
				WHEN  Salary < 1200 THEN 'C'
				WHEN Salary BETWEEN 1201 AND 2300 THEN 'B'
				ELSE 'A'
			END AS Grade,
		COUNT(*) AS GradeWiseEmpCount
		FROM Employee 
		GROUP BY 
			CASE
				WHEN  Salary < 1200 THEN 'C'
				WHEN Salary BETWEEN 1201 AND 2300 THEN 'B'
				ELSE 'A'
			END
		ORDER BY Grade;
GO
--=========================================================================
GO
------- Question-3: Display the employee salary grades and the number of 
------- employees between 2000 to 5000 range of salary.
		SELECT 
			CASE 
				WHEN Salary < 1200 THEN 'C'
				WHEN Salary BETWEEN 1201 AND 2300 THEN 'B'
				ELSE 'A'
		END AS Grade,
		COUNT(*) AS Employee_Count
		FROM Employee
		WHERE Salary BETWEEN 2000 AND 5000
		GROUP BY 
			CASE 
				WHEN Salary < 1200 THEN 'C'
				WHEN Salary BETWEEN 1201 AND 2300 THEN 'B'
				ELSE 'A'
		END
		ORDER BY Grade;
GO