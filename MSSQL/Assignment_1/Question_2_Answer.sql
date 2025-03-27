-- Use the Assignments database
USE ASSIGNMENTS;
-- TASK TO PERFORM IN ASSIGNMENT-1:
---- 2a) Add Primary key constraint for SalesmanId column in Salesman table.
		 ALTER TABLE Salesman
		 ALTER COLUMN SalesmanId INT NOT NULL;
		 ALTER TABLE Salesman
		 ADD PRIMARY KEY(SalesmanId);

---- 2b) Add default constraint for City column in Salesman table.
		 ALTER TABLE Salesman
		 ADD CONSTRAINT DF_SalesmanCity DEFAULT 'USA' FOR City;

---- 2c) Add Foreign key constraint for SalesmanId column in Customer table.
		 ALTER TABLE Customer
		 WITH NOCHECK
	     ADD CONSTRAINT FK_CustomerSalesman
		 FOREIGN KEY (SalesmanId) REFERENCES Salesman(SalesmanId);

---- 2d) Add not null constraint in CustomerName column for the Customer table.
		 ALTER TABLE Customer
		 ALTER COLUMN CustomerName VARCHAR(255) NOT NULL;

