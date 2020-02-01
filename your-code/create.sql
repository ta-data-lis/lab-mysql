CREATE DATABASE lab_mysql;
USE lab_mysql;


CREATE TABLE `cars` (
  `car_id` int NOT NULL AUTO_INCREMENT,
  `vin` varchar(50) NOT NULL,
  `manufacturer` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `const_year` int,
  `color` varchar(25),
  PRIMARY KEY (`car_id`)
) ;

CREATE TABLE `customers` (
  `cuid` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `phone_nb` varchar(50),
  `email` varchar(50),
  `address` varchar(200),
  `city` varchar(50),
  `state_prov` varchar(50),
  `country` varchar(50),
  `zip_code` varchar(50),
  PRIMARY KEY (`cuid`)
) ;


CREATE TABLE `salespersons` (
  `stid` int NOT NULL AUTO_INCREMENT,
  `staff_ID` int NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_store` varchar(50) NOT NULL,
  PRIMARY KEY (`stid`)
) ;

CREATE TABLE `invoices` (
  `inv_id` int NOT NULL,
  `inv_nb` int NOT NULL,
  `inv_date` datetime,
  `car_id` int NOT NULL,
  `stid` int NOT NULL,
  `cuid` int NOT NULL,
  PRIMARY KEY (`inv_id`),
  KEY `car_id` (`car_id`),
  KEY `staff_id` (`stid`),
  KEY `cust_ID` (`cuid`),
  FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`),
  FOREIGN KEY (`stid`) REFERENCES `salespersons` (`stid`),
  FOREIGN KEY (`cuid`) REFERENCES `customers` (`cuid`)
) ;
