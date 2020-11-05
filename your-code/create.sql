USE lab_mysql;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
	`VIN` varchar(20) NOT NULL,
    `manufacturer` varchar(20) NOT NULL,
    `model` varchar(20) NOT NULL,
    `year` year NOT NULL,
    `color` varchar(20) NOT NULL,
    `id`  int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SELECT * from cars;
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
	`name` varchar(20) NOT NULL,
    `phone_number` char(12) NOT NULL,
    `email` varchar(20) NOT NULL,
    `address` varchar(20) NOT NULL,
    `city` varchar(20) NOT NULL,
    `state_province` varchar(20) NOT NULL,
    `country` varchar(20) NOT NULL,
    `zip` char(5), 
    `id`  int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SELECT * from customers;

DROP TABLE IF EXISTS `Salesperson`;

CREATE TABLE `Salesperson` (
  `staff_ID` int,
  `name` varchar(20) NOT NULL,
  `store` varchar(20) NOT NULL,
  `id` int PRIMARY KEY AUTO_INCREMENT
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `Invoices`;
CREATE TABLE `Invoices` (
  `Invoice_number` int NOT NULL,
  `date` date NOT NULL,
  `car` varchar(20) NOT NULL,
  `customer` varchar(20) NOT NULL,
  `Salesperson` varchar(20) NOT NULL,
  `id` int PRIMARY KEY AUTO_INCREMENT
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `cars` VALUES (`3K096I98581DHSNUP`,`Volkswagen`,`Tiguan`,`2019`,`Blue`,`0`),(`ZM8G7BEUQZ97IH46V`,`Peugeot`,`Rifter`,`2019`,`Red`,`1`),(`RKXVNNIHLVVZOUB4M`,`Ford`,`Fusion`,`2018`,`White`,`2`),(`HKNDGS7CU31E9Z7JW`,`Toyota`,`RAV4`,`2018`,`Silver`,`3`),(`DAM41UDN3CHU2WVF6`,`Volvo`,`V60`,`2019`,`Gray`,`4`),(`DAM41UDN3CHU2WVF6`,`Volvo`,`V60 Cross Country`,`2019`,`Gray`,`5`);
;
SELECT * from cars;
