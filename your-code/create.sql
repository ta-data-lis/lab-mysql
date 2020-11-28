CREATE DATABASE lab_mysql;
USE lab_mysql;

SHOW tables;

SELECT @@GLOBAL.sql_mode;
SELECT @@SESSION.sql_mode;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE `cars` (
  `ID` 			smallint unsigned AUTO_INCREMENT,
  `VIN` 				VARCHAR(255),
  `Manufacturer` 		VARCHAR(52),
  `Model` 		VARCHAR(52),
  `Year` 		year DEFAULT NULL,
  `Color` VARCHAR(52),
  PRIMARY KEY (`ID`)
);

 alter table cars AUTO_INCREMENT=0;

CREATE TABLE `costumers` (
  `ID` 			smallint unsigned NOT NULL AUTO_INCREMENT,
  `Customer_ID` VARCHAR(255),
  `Name` 		VARCHAR(255),
  `Phone` 		int,
  `Email` 		VARCHAR(255),
  `Address` VARCHAR(255),
  `City`	VARCHAR(52),
  `State/Province` VARCHAR(52),
  `Country` VARCHAR(52),
 `Postal` VARCHAR(52),
  PRIMARY KEY (`ID`)
  );
  
  
CREATE TABLE `salespersons` (
  `ID` 			smallint unsigned NOT NULL AUTO_INCREMENT,
  `Staff_ID` 	int(5) ZEROFILL,
  `Name` 		VARCHAR(255),
  `Store`	VARCHAR(52),
  PRIMARY KEY (`ID`)
  );
  
 CREATE TABLE `invoices` (
  `ID` 			smallint unsigned NOT NULL AUTO_INCREMENT,
  `Invoice_Number` 	int,
  `Date` date,
  `Car` 		int,
  `Costumer`	int,
   `Sales_Person`	int,
  PRIMARY KEY (`ID`)
  ); 
  




