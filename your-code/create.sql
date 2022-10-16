CREATE DATABASE lab_mysql;

USE lab_mysql;

SHOW TABLES;

CREATE TABLE 
invoices (
inv_id SMALLINT, 
inv_date DATE, 
vin SMALLINT, 
cost_id SMALLINT, 
salesper TINYINT);

DROP TABLE invoices;

CREATE TABLE 
invoices (
inv_id INT PRIMARY KEY, 
inv_date DATE, 
car_id SMALLINT, 
cost_id SMALLINT, 
salesper SMALLINT);

CREATE TABLE 
cars (
car_id SMALLINT PRIMARY KEY, 
vin SMALLINT,
manuf VARCHAR(50),
model VARCHAR(30), 
car_year SMALLINT,
color VARCHAR(20),
Inventory VARCHAR(20));

CREATE TABLE 
salespersons (
salesper_id SMALLINT PRIMARY KEY,
sper_name CHAR(50),
store CHAR(50));

CREATE TABLE 
costumers (
cost_ID SMALLINT PRIMARY KEY,
cost_name VARCHAR(50),
phone_num VARCHAR(50),
email VARCHAR(20),
address CHAR(50),
city VARCHAR(20),
state_provi VARCHAR(20),
country VARCHAR(20), 
zip_post_code INT);

ALTER TABLE invoices 
ADD FOREIGN KEY (car_id) REFERENCES cars (car_id);

ALTER TABLE invoices 
ADD FOREIGN KEY (cost_id) REFERENCES costumers (cost_ID);

ALTER TABLE invoices 
ADD FOREIGN KEY (salesper) REFERENCES salespersons (salesper_id);

DESCRIBE invoices;

