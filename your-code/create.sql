CREATE DATABASE lad_mysql;

CREATE TABLE 
car(
VIN_id INT PRIMARY KEY,
manufacturer VARCHAR(52),
model VARCHAR(52),
yearS INT,
color VARCHAR(52)
);

CREATE TABLE 
customers(
Customer_id INT PRIMARY KEY,
name_ VARCHAR(52),
phone_number INT,
email VARCHAR(52),
address VARCHAR(52),
city VARCHAR(52),
state_province VARCHAR(52),
country VARCHAR(52),
zip_code INT
);

CREATE TABLE 
salesperson(
staff_id INT PRIMARY KEY,
name_ VARCHAR(52),
store VARCHAR(52)
);

CREATE TABLE 
invoices(
invoice_id INT PRIMARY KEY,
date_ VARCHAR(52),
car VARCHAR(52),
customer VARCHAR(52),
salesperson VARCHAR(52)
);