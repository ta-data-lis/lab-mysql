/* Stablish Database to use */
USE lab_mysql;

/* Create Table Invoices*/
CREATE TABLE IF NOT EXISTS
lab_mysql.invoices(
in_id INT PRIMARY KEY,
in_number INT,
in_date VARCHAR(25),
in_car INT,
in_customer INT,
in_salesperson INT);

/* Create Table Car*/
CREATE TABLE IF NOT EXISTS
lab_mysql.cars(
car_id INT PRIMARY KEY,
car_vin VARCHAR(25),
car_manufacturer VARCHAR(25),
car_model VARCHAR(25),
car_year YEAR,
car_color VARCHAR(25));

/* Create Table salespersons*/
CREATE TABLE IF NOT EXISTS
lab_mysql.salespersons(
sp_id INT PRIMARY KEY,
sp_staff_id INT,
sp_name VARCHAR(25),
sp_store VARCHAR(25));

/* Create Table customers*/
CREATE TABLE IF NOT EXISTS
lab_mysql.customers(
ct_id INT PRIMARY KEY,
ct_customer_id INT,
ct_name VARCHAR(50),
ct_phone VARCHAR(50)customers,
ct_email VARCHAR(50),
ct_address VARCHAR(50),
ct_city VARCHAR(50),
ct_location VARCHAR(50),
ct_country VARCHAR(50),
ct_zip_post_code INT);
