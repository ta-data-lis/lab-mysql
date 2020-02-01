CREATE DATABASE lab_mysql;
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
CREATE TABLE cars (car_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT, VIN VARCHAR(20), manufacturer VARCHAR(30), model VARCHAR(30), color VARCHAR(30), production_year INT);
CREATE TABLE customers (cust_ID INT PRIMARY KEY AUTO_INCREMENT, customer_Name VARCHAR(50), phone_Number INT, email VARCHAR(30), address VARCHAR(30), 
City VARCHAR(30), state VARCHAR(30), country VARCHAR(30), postal_Code INT);
CREATE TABLE invoices (invoice_number INT PRIMARY KEY AUTO_INCREMENT, invoice_Date DATE, car VARCHAR(30), customer VARCHAR(50), salesperson VARCHAR(50));
CREATE TABLE staff (staff_id INT PRIMARY KEY AUTO_INCREMENT, staff_name VARCHAR(50), store VARCHAR(50));