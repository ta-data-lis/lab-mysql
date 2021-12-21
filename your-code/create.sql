-- Start auto-increment at zero
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

-- Let's drop the database
DROP DATABASE IF EXISTS lab_mysql;

-- Let's create the database
CREATE DATABASE IF NOT EXISTS lab_mysql;

-- Let's indicate what is the database to be used
USE lab_mysql;

-- Let's delete an existing table with the name 'Cars'
DROP TABLE IF EXISTS Cars;

-- Let's create the table Cars, informing about the type of each column
CREATE TABLE IF NOT EXISTS Cars (
	ID smallint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
	VIN VARCHAR(20),
	Manufacturer VARCHAR(20),
	Model VARCHAR(20),
	Year YEAR,
	Color VARCHAR(20)
);

-- Let's delete an existing table with the name 'Customers'
DROP TABLE IF EXISTS Customers;

-- Let's create the table Customers, informing about the type of each column
CREATE TABLE IF NOT EXISTS Customers(
	ID smallint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`Customer ID` int,
	Name VARCHAR(20),
	Phone VARCHAR(20),
	Email VARCHAR(20) default '-',
	Address VARCHAR(30),
	City VARCHAR(20),
	`State/Province` VARCHAR(20),
	Country VARCHAR(20),
	Postal int
);

-- Let's delete an existing table with the name 'Salespersons'
DROP TABLE IF EXISTS Salespersons;

-- Let's create the table Salespersons, informing about the type of each column
CREATE TABLE IF NOT EXISTS Salespersons(
	ID smallint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`Staff ID` VARCHAR(5),
	Name VARCHAR(20),
	Store VARCHAR(20)
);

-- Let's delete an existing table with the name 'Invoices'
DROP TABLE IF EXISTS Invoices;

-- Let's create the table Invoices, informing about the type of each column
CREATE TABLE IF NOT EXISTS Invoices(
	ID smallint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`Invoice Number` int,
	Date DATE,
	Car smallint unsigned NOT NULL,
	Customer smallint unsigned NOT NULL,
	`Sales Person` smallint unsigned NOT NULL
);