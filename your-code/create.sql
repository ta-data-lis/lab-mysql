## Challenge 1 - Design the Database

CREATE DATABASE lab_mysql;
USE lab_mysql;

SELECT * FROM cars;

DROP TABLE cars;
DROP TABLE customers;
DROP TABLE salesperson;
DROP TABLE invoices;

## Challenge 2 - Create the Database and Tables

CREATE TABLE IF NOT EXISTS cars (
car_id INT PRIMARY KEY AUTO_INCREMENT,
vin VARCHAR(17),
make VARCHAR(20), 
model VARCHAR (20), 
yr INT,  
color VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS customers (
cus_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id VARCHAR(20), 
customer_name VARCHAR(50), 
phone_num VARCHAR(20),
email VARCHAR(50),
address VARCHAR(50),
city VARCHAR(20),
state VARCHAR(20),
country_code VARCHAR(20),
zip_code VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS salesperson (
sales_id INT PRIMARY KEY AUTO_INCREMENT,
staff_id VARCHAR(20),
staff_name VARCHAR(50),
store VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS invoices (
invoice_id INT PRIMARY KEY AUTO_INCREMENT,
invoice_num VARCHAR(30),
sales_date DATE,
car_id VARCHAR(17),
cus_id INT,
sales_id INT
);

SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salesperson;
SELECT * FROM invoices;




