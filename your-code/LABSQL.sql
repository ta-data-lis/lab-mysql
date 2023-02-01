create database mysql_lab;

use mysql_lab;

CREATE TABLE IF NOT EXISTS mysql_lab.cars(
ID INT PRIMARY KEY,
cars_VIN VARCHAR(50),
manufacturer VARCHAR(50),
model VARCHAR(50),
Year_cars  DATE,
color  VARCHAR(50));



CREATE TABLE IF NOT EXISTS
mysql_lab.customers(
ID  INT PRIMARY KEY,
customer_ID varchar(50),
name_customer VARCHAR(50),
Phone_number varchar(50),
email VARCHAR(50) ,
adress varchar(50),
city varchar(50),
state varchar(50),
country varchar(50),
Postal_code varchar(50));

CREATE TABLE IF NOT EXISTS
 mysql_lab.salespersons(
ID INT PRIMARY KEY,
staff_id VARCHAR(50),
name_salesperson VARCHAR(50),
store varchar(50));

CREATE TABLE IF NOT EXISTS
 mysql_lab.Invoices(
ID INT PRIMARY KEY,
Invoice_number VARCHAR(50),
date_invoices VARCHAR(50) ,
car varchar(50),
customer varchar(50),
salesperson varchar(50));

