CREATE DATABASE lab_mysql;
USE lab_mysql;

-- DROP TABLE lab_mysql.Cars;
-- DROP TABLE lab_mysql.Customers;
-- DROP TABLE lab_mysql.Salespersons;
-- DROP TABLE lab_mysql.Invoices;

CREATE TABLE Cars (ID INTEGER PRIMARY KEY,VIN VARCHAR(17), manufacturer text, model text, year year, color text);
CREATE TABLE Customers (ID INTEGER, Customer_ID integer PRIMARY KEY, name text, phone_number Varchar(30), email text NULL, address text, city text, state_province text, country text, zip_code integer);
CREATE TABLE Salespersons (ID INTEGER, Staff_ID integer PRIMARY KEY, name text, store text);
CREATE TABLE Invoices (ID INTEGER, Invoice_number integer PRIMARY KEY, Date DATE, Car integer, Customer integer, Salesperson integer);