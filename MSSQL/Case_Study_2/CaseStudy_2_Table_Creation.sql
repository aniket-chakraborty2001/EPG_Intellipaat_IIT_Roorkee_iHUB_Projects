-- Use the assignments database
USE ASSIGNMENTS;
GO
------- Create the Location table and insert data
GO
		CREATE TABLE Location (
		Location_Id INT PRIMARY KEY,
		City VARCHAR(30));
GO
		INSERT INTO Location (Location_Id, City) VALUES
		(122, 'New York'),(123, 'Dallas'),(124, 'Chicago'),(167, 'Boston');
GO
------- Create the Department table and insert data
GO
		CREATE TABLE Department (
		Department_Id INT PRIMARY KEY,
		Name VARCHAR(30),
		Location_Id INT FOREIGN KEY REFERENCES Location(Location_Id));
GO
		INSERT INTO Department (Department_Id, Name, Location_Id) VALUES
		(10, 'Accounting',122),(20,'Sales',124),(30,'Research',123),(40,'Operations',167);
GO
------- Create the Job table and insert data
GO
		CREATE TABLE Job (
		Job_Id INT PRIMARY KEY,
		Designation VARCHAR(30));
GO
		INSERT INTO Job (Job_Id, Designation) VALUES
		(667,'Clerk'),(668,'Staff'),(669,'Analyst'),(670,'Sales Person'),
		(671,'Manager'),(672,'President');
GO
------- Create the Employee table and insert data
GO
		CREATE TABLE Employee (
		Employee_Id INT PRIMARY KEY,
		Last_Name VARCHAR(30),
		First_Name VARCHAR(30),
		Middle_Name VARCHAR(10),
		Job_Id INT FOREIGN KEY REFERENCES Job(Job_Id),
		Hire_Date VARCHAR(20),
		Salary MONEY,
		Comm INT,
		Department_Id INT FOREIGN KEY REFERENCES Department(Department_Id));
GO
		INSERT INTO Employee VALUES
		(7369,'Smith','John','Q',667,'17-Dec-84',800,NULL,20),
		(7499,'Allen','Kevin','J',670,'20-Feb-85',1600,300,30),
		(755,'Doyle','Jean','K',671,'04-Apr-85',2850,NULL,30),
		(756,'Dennis','Lynn','S',671,'15-May-85',2750,NULL,30),
		(757,'Baker','Leslie','D',671,'10-Jun-85',2200,NULL,40),
		(7521,'Wark','Cynthia','D',670,'22-Feb-85',1250,50,30);
GO
--=====================================================================================
GO
------- Check the created tables
GO
		SELECT * FROM Location;
		SELECT * FROM Department;
		SELECT * FROM Job;
		SELECT * FROM Employee;
GO