-- Create a database named 'ASSIGNMENTS'
CREATE DATABASE ASSIGNMENTS;

-- Use the 'AASIGNMENTS' database
USE ASSIGNMENTS;

-- Create the Salesman table and insert data into it
CREATE TABLE Salesman (
SalesmanId INT,
Name VARCHAR(255),
Commission DECIMAL(10, 2),
City VARCHAR(255),
Age INT
);

INSERT INTO Salesman (SalesmanId, Name, Commission, City, Age) VALUES
(101, 'Joe', 50, 'California', 17),
(102, 'Simon', 75, 'Texas', 25),
(103, 'Jessie', 105, 'Florida', 35),
(104, 'Danny', 100, 'Texas', 22),
(105, 'Lia', 65, 'New Jersey', 30);

-- Create table Customers and insert data in that table
CREATE TABLE Customer (
SalesmanId INT,
CustomerId INT,
CustomerName VARCHAR(255),
PurchaseAmount INT,
);

INSERT INTO Customer (SalesmanId, CustomerId, CustomerName, PurchaseAmount)
VALUES
(101, 2345, 'Andrew', 550),
(103, 1575, 'Lucky', 4500),
(104, 2345, 'Andrew', 4000),
(107, 3747, 'Remona', 2700),
(110, 4004, 'Julia', 4545);

-- Create the Orders table and insert data in that table
CREATE TABLE Orders (
OrderId int, 
CustomerId int, 
SalesmanId int, 
Orderdate Date, 
Amount money);

INSERT INTO Orders Values
(5001,2345,101,'2021-07-01',550),
(5003,1234,105,'2022-02-15',1500);

-- Check the three tables built for assignment-1
SELECT * FROM Salesman;
SELECT * FROM Customer;
SELECT * FROM Orders;