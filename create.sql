CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS 
cars (ID INT PRIMARY KEY,
	   vehicle_identification VARCHAR(30), 
	   manufacturer VARCHAR(30),
       model VARCHAR(30), 		
       year_made INT NOT NULL, 
       color VARCHAR(30));

CREATE TABLE IF NOT EXISTS 
customers ( ID INT PRIMARY KEY,
	   customer_id VARCHAR(30), 
	   customer_name VARCHAR(30),
       phone_number VARCHAR(30), 		
       email VARCHAR(50), 
	   adress VARCHAR(50),
       city VARCHAR(50),
       state VARCHAR(50),
       country VARCHAR(50),
       zip_code VARCHAR(30));

CREATE TABLE IF NOT EXISTS
salespersons ( ID INT PRIMARY KEY,
	   staff_id VARCHAR(30), 
	   salesperson_name VARCHAR(30),
       store VARCHAR(30));

CREATE TABLE IF NOT EXISTS
invoices ( ID INT PRIMARY KEY,
	   invoice_number VARCHAR(30), 
	   invoice_date VARCHAR(30),
       car VARCHAR(30),
       customer_name VARCHAR(30),
       salesperson_name VARCHAR(30));
