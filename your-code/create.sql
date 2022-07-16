CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE TABLE invoices
(`invoice_number` INT,
`date` DATE,
`car` INT,
`customer` INT,
`salesperson` INT);

CREATE TABLE customers
(`customer_id` INT,
`name` VARCHAR(50),
`phone_number` INT,
`email` VARCHAR(50),
`address` VARCHAR(100),
`city` VARCHAR(30),
`state` VARCHAR(30),
`country` VARCHAR(30),
`postal_code` INT);

CREATE TABLE cars
(`VIN` INT,
`manufacturer` VARCHAR(30),
`model` VARCHAR(30),
`year` YEAR,
`color` VARCHAR(30));

CREATE TABLE salespersons
(`staff_id` INT,
`name` DATE,
`store` INT);