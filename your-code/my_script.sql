USE lab_mysql;
CREATE TABLE Cars (
ID INT,
VIN VARCHAR(50), 
 Manufacturer VARCHAR(100),
 Model VARCHAR(80),
 Year INT, 
 Color VARCHAR(50));
 
 CREATE TABLE Invoices (
ID INT,
`Invoice Number` INT ,
`Date` Date,
 Car INT, 
 Customer INT,
 `Sales Person` INT);
 
 CREATE TABLE Customers (
ID INT,
`Customer ID` INT ,
 Name VARCHAR(80), 
 Phone VARCHAR(20),
 Email VARCHAR(50),
 Address VARCHAR(80),
 City VARCHAR(50),
 `State/Province` VARCHAR(50),
 Country VARCHAR(50),
 Postal INT);
 
 CREATE TABLE Salespersons (
ID INT,
`Staff ID` INT ,
 Name VARCHAR(50), 
 Store VARCHAR(50)); 
 