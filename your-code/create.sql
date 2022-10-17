USE car_db;

-- Creates tables
CREATE TABLE cars(
car_id INT,
vin VARCHAR(17),
manufacturer VARCHAR(10),
model VARCHAR(20),
year SMALLINT,
color VARCHAR(10),
owner_customer_id INT);
CREATE TABLE customers(
customer_id INT,
name VARCHAR(45),
phone_number VARCHAR(15),
email VARCHAR(30),
address MEDIUMTEXT,
city VARCHAR(20),
state_province VARCHAR(45),
country VARCHAR(45),
zip_code VARCHAR(10));
CREATE TABLE invoices (
invoice_id INT,
invoice_nr INT,
invoice_date DATE,
car_id INT,
customer_id INT,
salesperson_id INT);
CREATE TABLE offices(
office_id INT,
office_name VARCHAR(45));
CREATE TABLE salespersons(
salesperson_id INT,
staff_id INT,
name VARCHAR(45),
office VARCHAR(30),
office_id INT);