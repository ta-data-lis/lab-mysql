CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE cars (car_id INT PRIMARY KEY AUTO_INCREMENT, 
car_vin VARCHAR(30), maker VARCHAR(25),model VARCHAR(25),bulid_year CHAR(4),color VARCHAR(25));

CREATE TABLE customers (cust_id INT PRIMARY KEY AUTO_INCREMENT, cust_name VARCHAR(30),cust_phone CHAR(25),cust_email VARCHAR(30),cust_address VARCHAR(50),
cust_city VARCHAR(50),cust_state VARCHAR(50), cust_country VARCHAR(50),cust_zip CHAR(15));

CREATE TABLE salesperson (staff_id INT PRIMARY KEY AUTO_INCREMENT,
full_name VARCHAR(30),store_location VARCHAR(30));

CREATE TABLE invoices (invoice_id INT PRIMARY KEY AUTO_INCREMENT,
invoice_no VARCHAR(50),sales_date DATE,car_id INT,cust_id INT,staff_id INT,
FOREIGN KEY (car_id) REFERENCES cars(car_id),
FOREIGN KEY (cust_id) REFERENCES customers(cust_id),
FOREIGN KEY (staff_id) REFERENCES salesperson(staff_id));

