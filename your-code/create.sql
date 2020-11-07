CREATE DATABASE lab_mysql;
USE lab_mysql;
SHOW TABLES;
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `VIN` varchar(30) NOT NULL,
  `manufacturer` varchar(40) NOT NULL,
  `model` varchar(20) NOT NULL,
  `year` int NOT NULL,
  `color` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`VIN`)
) 

SELECT * from cars

LOCK TABLES `cars` WRITE;
INSERT INTO `cars` VALUES 
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray');
UNLOCK TABLES;

SELECT * from cars


DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `Customer ID` int NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` char(12) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `City` varchar(40) NOT NULL,
  `State` varchar(40) NOT NULL,
  `Country` varchar(40) NOT NULL,
  `Postal` int NOT NULL,
  PRIMARY KEY (`Customer ID`)
) 

SELECT * from customers

LOCK TABLES `customers` WRITE;
INSERT INTO `customers` VALUES 
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la chopera 14','Madrid', 'Madrid', 'Spain', 28045),
(20001,'Abraham Lincoln','13059077086','-','120 SW 8th St','Miami','Florida','United States',33130),
(30001,'Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','Paris','Île-de-France','France',75008);
UNLOCK TABLES;

SELECT * from customers

DROP TABLE IF EXISTS `Salespersons`;
CREATE TABLE `Salespersons` (
  `Staff ID` int NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Store` varchar(20) NOT NULL,
  PRIMARY KEY (`Staff ID`)
) 

SELECT * from Salespersons

LOCK TABLES `Salespersons` WRITE;
INSERT INTO `Salespersons` VALUES 
(1,'Petey Cruiser','Madrid'),
(2,'Anna Sthesia','Barcelona'),
(3,'Paul Molive','Berlin'),
(4,'Gail Forcewind','Paris'),
(5,'Paige Turner','Mimia'),
(6,'Bob Frapples','Mexico City'),
(7,'Walter Melon','Amsterdam'),
(8,'Shonda Leer','São Paulo');
UNLOCK TABLES;

SELECT * from Salespersons

DROP TABLE IF EXISTS `Invoice`;
CREATE TABLE `Invoice` (
  `Invoice Number` varchar(20) NOT NULL,
  `Date` varchar(40) NOT NULL,
  `Car` varchar(20) NOT NULL,
  `Customer` varchar(20) NOT NULL,
  `Sales Person` varchar(20) NOT NULL,
  PRIMARY KEY (`Invoice Number`)
) 

SELECT * from Invoice

LOCK TABLES `Invoice` WRITE;
INSERT INTO `Invoice` VALUES 
('852399038', '22-08-2018', '0', '1', '3'),
('731166526','31-12-2018','3','0','5'),
('271135104','22-01-2019','2','2','7');
UNLOCK TABLES;

SELECT * from Invoice
