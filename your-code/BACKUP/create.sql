CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE TABLE Cars (
	carID int,
	VIN varchar(31),
    manufacturer varchar(63),
    model varchar(63),
    year smallint,
    color varchar(15)
    );
    
CREATE TABLE Customers (
	ID int,
	customerID int,
    name varchar(63),
    phone_number varchar(31),
    email varchar(31),
    address varchar(255),
    city varchar(31),
    state_province varchar(63),
    country varchar(31),
    zip_code int
    );
    
CREATE TABLE Salespersons (
	ID int,
    staffID int,
    name varchar(63),
    store varchar(15)
    );
    
CREATE TABLE Invoices (
	ID int,
    invoice_number int,
    date VARCHAR(15),
    car int,
    customer int,
    salesperson int
    );
    