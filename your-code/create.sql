CREATE DATABASE CARS;

USE CARS;

DROP TABLE IF EXISTS cars;


CREATE TABLE cars (
  VIN varchar(10) Primary Key NOT NULL,
  manufacture varchar(40) NOT NULL,
  model varchar(20) NOT NULL,
  year char(4) NOT NULL,
  color varchar(40) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE customers (
	customerID varchar(25) NOT NULL,
	fName varchar(25) NOT NULL,
	lName varchar(25) NOT NULL,
	phoneNumber varchar(13) NOT NULL,
 	email varchar(40) NOT NULL, 
 	address varchar(50) NOT NULL,
 	city varchar(40) NOT NULL, 
 	state varchar(30) NOT NULL,
 	country varchar(35) NOT NULL,
	zip char(5) NOT NULL,
	PRIMARY KEY (customerID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE Salespersons (
	staffID varchar(10) NOT NULL,
	fName varchar(25) NOT NULL,
	lName varchar(25) NOT NULL,
	storeID varchar(10) NOT NULL,
	Revenue int 
	PRIMARY KEY (staffID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS Invoices (
	invoiceID varchar(10) NOT NULL,
	invoice_date date NOT NULL,
	
	



