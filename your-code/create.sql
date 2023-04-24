CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS lab_mysql.cars(Vehicle_Identification_Number_VIN  VARCHAR(25) PRIMARY KEY,
										  Manufacturer VARCHAR(20),
										  Model VARCHAR(20),
										  Year_Make INT(4),
										  Color VARCHAR(10));

CREATE TABLE IF NOT EXISTS lab_mysql.customers(Customer_ID INT (5) PRIMARY KEY,
											   Customer_Name VARCHAR(50),
											   Phone_Number CHAR(12),
											   Email VARCHAR(50),
											   Address VARCHAR(40),
											   City VARCHAR(20),
											   State CHAR(2),
											   Country VARCHAR(20),
											   Zip_Code CHAR(5));								

CREATE TABLE IF NOT EXISTS lab_mysql.staff(Staff_ID INT (5) PRIMARY KEY,
										  Staff_Name VARCHAR(50),
										  Store VARCHAR (15));
										
                                          
CREATE TABLE IF NOT EXISTS lab_mysql.invoices(Invoice_Number INT (9) PRIMARY KEY,
											  Date_Current DATE,
											  Car INT (2),
											  Customer INT (2),
											  Salesperson INT (2));
                                              
select * from lab_mysql.cars;