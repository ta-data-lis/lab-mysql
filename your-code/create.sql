CREATE DATABASE lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS Cars;

CREATE TABLE Cars (
ID int NOT NULL AUTO_INCREMENT,
VIN char(17) NOT NULL,
manufacturer varchar(10) NOT NULL,
model varchar(10) NOT NULL,
year date NOT NULL,
color varchar(10) NOT NULL,
PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
ID int NOT NULL AUTO_INCREMENT,
CustomerID char(5) NOT NULL,
Name varchar(10) NOT NULL,
phone varchar(25) NOT NULL,
email varchar(25) NULL,
address varchar(40) NOT NULL,
city varchar(10) NOT NULL,
state varchar(25) NOT NULL,
country varchar(15) NOT NULL,
postal char(5) NOT NULL,
PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS Salespersons;

CREATE TABLE Salespersons (
ID int NOT NULL AUTO_INCREMENT,
StaffID char(5) NOT NULL,
Name varchar(10) NOT NULL,
Store varchar(15) NOT NULL,
PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS Invoices;

CREATE TABLE Invoices (
ID int NOT NULL AUTO_INCREMENT,
InvoiceNumber char(9) NOT NULL,
Date date NOT NULL,
Car int NOT NULL,
Customer int NOT NULL,
SalesPerson int NOT NULL,
PRIMARY KEY (ID)
);


