CREATE DATABASE lab_mysql;
USE lab_mysql;
CREATE TABLE Cars (ID VARCHAR(10), VIN VARCHAR(40), manufacturer VARCHAR(40), model VARCHAR(20), color VARCHAR(20), year VARCHAR(20));
CREATE TABLE Customers (ID VARCHAR(10), customer_id VARCHAR(40), name VARCHAR(60), phone_number VARCHAR(20), email VARCHAR(50), address VARCHAR(50), city VARCHAR(30), state_province varchar(40), country VARCHAR(30), zip_postal_code VARCHAR(30));
CREATE TABLE SalesPerson (ID VARCHAR(10), staff_id VARCHAR(40), name VARCHAR(60), store VARCHAR(60));
CREATE TABLE Invoices (ID VARCHAR(10), invoice_number INT, date VARCHAR(20), car VARCHAR(40), customer VARCHAR(40), sales_person VARCHAR(40));

