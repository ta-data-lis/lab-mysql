#Create Database

USE lab_mysql;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

DROP TABLE IF EXISTS `CARS`;

CREATE TABLE `CARS` (
  `VIN` varchar(20) NOT NULL,
  `OEM` varchar(40) NOT NULL,
  `model` varchar(20) NOT NULL,
  `year` char(12) NOT NULL,
  `color` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`VIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `Customers`;

CREATE TABLE `Customers` (
  `Customer_ID` INT(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `phone` char(18) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(15) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Salesman` (
  `Sales_ID` varchar(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Dealershop` varchar(20) NOT NULL,
  PRIMARY KEY (`Sales_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `Invoices`;

CREATE TABLE `Invoices` (
  `Invoice_ID` varchar(11) NOT NULL,
  `Sale_Date`  DATE NOT NULL,
  `VIN` varchar(20) NOT NULL,
  `Customer_ID` INT(11) NOT NULL,
  `Sales_ID` varchar(11) NOT NULL,
  PRIMARY KEY (`Invoice_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;