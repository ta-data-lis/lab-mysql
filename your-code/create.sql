CREATE DATABASE CARS;

USE CARS;

DROP TABLE IF EXISTS `car`;

CREATE TABLE IF NOT EXISTS `car`(
`vin` varchar(20) Primary Key NOT NULL,
`manufacturer` varchar(20)  NOT NULL,
`model` varchar(20) NOT NULL,
`year` char(4) NOT NULL,
`color` VARCHAR(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `customers`;

CREATE TABLE IF NOT EXISTS `customers` (
`customer_id` INT(20) Primary Key NOT NULL,
`name` VARCHAR(20) NOT NULL,
`phone` INT(20) NOT NULL,
`email` VARCHAR(20) NOT NULL,
`address` VARCHAR(20) NOT NULL, 
`city` VARCHAR(20) NOT NULL,
`state_province` VARCHAR(20) NOT NULL,
`country` VARCHAR(20) NOT NULL,
`postal` INT(20) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `salespersons`;

CREATE TABLE IF NOT EXISTS `salespersons` (
`staff_id` INT(20) Primary Key NOT NULL,
`name` VARCHAR(20) NOT NULL,
`store` VARCHAR(20) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `invoices`;

CREATE TABLE IF NOT EXISTS `invoices` (
`invoice_number` INT(20) Primary Key NOT NULL,
`date_invoice` DATE NOT NULL,
`car` INT(20) NOT NULL,
`customer` INT(20) NOT NULL,
`sales_person` INT(20) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
       
