USE lab_mysql;

CREATE TABLE Cars (VIN VARCHAR(20), Manufacturer VARCHAR(30), 
Model VARCHAR(30), Year CHAR(4), Color VARCHAR(20),
PRIMARY KEY (VIN));

DESCRIBE Cars;

CREATE TABLE Customers (Customer_ID CHAR(10), Customer_Name VARCHAR(25), 
Phone_number CHAR(20), Email VARCHAR(50), Address VARCHAR(50), 
city VARCHAR(30), State_province VARCHAR(20), Country VARCHAR(25),
Post_zip_code CHAR(10), 
PRIMARY KEY (Customer_ID));

DESCRIBE Customers;

CREATE TABLE Salespeople (Staff_ID SMALLINT(5), Staff_Name VARCHAR(25), 
Store VARCHAR(30),
PRIMARY KEY (Staff_ID));

DESCRIBE Salespeople;

CREATE TABLE Invoices (Invoice_number INT(10), Invoice_date DATE, 
Car CHAR(3), Customer CHAR(3), Sales_person CHAR(3), Price INT(10),
PRIMARY KEY (Invoice_number));

DESCRIBE Invoices

CREATE TABLE Stores (store_id CHAR(4), store_name VARCHAR(40), 
store_address VARCHAR(40), city VARCHAR(20), state CHAR(2), zip CHAR(5),
PRIMARY KEY (store_id));

DESCRIBE Stores








