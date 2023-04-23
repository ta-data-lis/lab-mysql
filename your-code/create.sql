SELECT CURRENT_USER();

CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;


CREATE TABLE IF NOT EXISTS cars(
ID INT,
VIN VARCHAR(30),
manufacturer VARCHAR(30),
model VARCHAR(30),
year_car INT,
color VARCHAR(30));

SELECT * FROM lab_mysql.cars;


CREATE TABLE IF NOT EXISTS customers(
ID INT,
id_customer INT,
name_customer VARCHAR(30),
phone VARCHAR(30),
email VARCHAR(30),
address VARCHAR(30),
city VARCHAR(30),
state VARCHAR(30),
country VARCHAR(30),
postcode VARCHAR(30));

SELECT * FROM lab_mysql.customers;


CREATE TABLE IF NOT EXISTS salespersons(
ID INT,
id_salesperson INT,
name_salesperson VARCHAR(30),
store VARCHAR(30));

SELECT * FROM lab_mysql.salespersons;


CREATE TABLE IF NOT EXISTS invoices(
ID INT,
invoice_number INT,
invoice_date DATE,
car INT,
customer INT,
salesperson INT);

SELECT * FROM lab_mysql.invoices;