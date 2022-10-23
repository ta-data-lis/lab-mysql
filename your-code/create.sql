CREATE DATABASE lab_mysql;

USE lab_mysql;

SHOW TABLES;

CREATE TABLE lab_mysql.cars (ID TINYINT, VIN VARCHAR(40) PRIMARY KEY, Manufacturer VARCHAR(20), Model VARCHAR(20), Year TINYINT(10), Color VARCHAR(20));

CREATE TABLE lab_mysql.customers (ID TINYINT, Customer_ID VARCHAR(20) PRIMARY KEY, Customer_Name VARCHAR(50), Phone_number TINYINT(30), Email VARCHAR(40), Address VARCHAR(50), City VARCHAR(20), State_Province VARCHAR(30), Country VARCHAR(20), Zip_Code VARCHAR(20));

CREATE TABLE lab_mysql.salespersons(ID TINYINT, Staff_ID SMALLINT(40) PRIMARY KEY , Staff_Name VARCHAR(50), Store VARCHAR(20));

CREATE TABLE lab_mysql.invoices(ID TINYINT, Invoice_number SMALLINT(40) PRIMARY KEY, Date DATE, VIN VARCHAR(40) NOT NULL, Customer_ID VARCHAR(20) NOT NULL, Staff_ID SMALLINT(40) NOT NULL);

ALTER TABLE lab_mysql.invoices
ADD FOREIGN KEY (VIN) REFERENCES lab_mysql.cars(VIN);

ALTER TABLE lab_mysql.invoices
ADD FOREIGN KEY (Customer_ID) REFERENCES lab_mysql.customers(Customer_ID);

ALTER TABLE lab_mysql.invoices
ADD FOREIGN KEY (Staff_ID) REFERENCES lab_mysql.salespersons(Staff_ID);

