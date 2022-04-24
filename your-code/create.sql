CREATE DATABASE lab_mysql;


CREATE TABLE IF NOT EXISTS
lab_mysql.cars (
VIN VARCHAR(20) PRIMARY KEY,
manufacturer VARCHAR(20),
model VARCHAR(20),
year year,
color VARCHAR(20));


CREATE TABLE IF NOT EXISTS
lab_mysql.customers (
customer_ID INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
phone_number VARCHAR(30),  /* VARCHAR for phone number because of the + in the beginning*/
email VARCHAR(50),
address VARCHAR(70),
city VARCHAR(20),
state_province VARCHAR(50),
country VARCHAR(30),
zip_postal_code INT);

CREATE TABLE IF NOT EXISTS
lab_mysql.salespersons (
staff_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
store VARCHAR(50));

CREATE TABLE IF NOT EXISTS
lab_mysql.invoices (
invoice_number INT PRIMARY KEY,
date VARCHAR(11),  /* VARCHAR because date format doesn't work, 11 because of date format dd-mm-yyyy */
car VARCHAR(20),
customer INT,
salesperson INT);



