USE lab_mysql;

CREATE DATABASE lab_mysql;

CREATE TABLE IF NOT EXISTS
lab_mysql.cars(     
car_id INT PRIMARY KEY,
car_vin VARCHAR(52),
manufacturer_id VARCHAR(52),
model VARCHAR(52),
year INT,
color VARCHAR(52));

CREATE TABLE IF NOT EXISTS
lab_mysql.costumers(     
customer_id INT PRIMARY KEY,
customer_name VARCHAR(52),
phone VARCHAR(52),
email VARCHAR(52),
address VARCHAR(52),
city VARCHAR(52),
state VARCHAR(52),
country VARCHAR(52),
postal_code INT);

CREATE TABLE IF NOT EXISTS
lab_mysql.sales_person(     
salepers_id INT PRIMARY KEY,
staff_id INT,
name VARCHAR(52),
store VARCHAR(52));

CREATE TABLE IF NOT EXISTS
lab_mysql.invoices(   
invoice_id INT PRIMARY KEY,
inv_num INT,
date INT,
car_id INT,
customer_id INT,
salespers_id INT);

