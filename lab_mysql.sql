CREATE DATABASE lab_mysql;
USE lab_mysql;

SHOW TABLES;


CREATE TABLE `cars` (
	`ID` 				smallint,
	`VIN` 				VARCHAR(200),
	`Manufacturer` 		VARCHAR(50),
	`Model` 			VARCHAR(50),
	`Year`				int,
	`Color`				VARCHAR(50),
PRIMARY KEY (`ID`)
);


CREATE TABLE `customers` (
	`ID`				smallint,
	`Customer_ID` 		int,
	`Name`				VARCHAR(200),
	`Phone`				bigint,
	`Email`				VARCHAR(200),
	`Address`			VARCHAR(200),
	`City`				VARCHAR(50),
	`State`				VARCHAR(50),
	`Country`			VARCHAR(50),
	`Postal`			int,
PRIMARY KEY (`ID`)
);


CREATE TABLE `salespersons` (
	`ID`			smallint,
    `Staff_ID` 		int,
	`Name`			VARCHAR(200),
	`Store`			VARCHAR(50),
PRIMARY KEY (`ID`)
);


CREATE TABLE `invoices` (
	`ID`				smallint,
	`Invoice_Number` 	int,
	`Date`				date,
	`Car`				int,
	`Customer`			int,
	`Sales_Person`		int,
PRIMARY KEY (`ID`)
);


INSERT INTO lab_mysql.cars (ID, VIN, Manufacturer, Model, Year, Color)
VALUES (0,'3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
(1,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
(2,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
(3,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
(4,'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
(5,'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');


INSERT INTO lab_mysql.salespersons (ID, Staff_ID, Name, Store)
VALUES (0,00001,'Petey Cruiser','Madrid'),
(1,00002,'Anna Sthesia','Barcelona'),
(2,00003,'Paul Molive','Berlin'),
(3,00004,'Gail Forcewind','Paris'),
(4,00005,'Paige Turner','Mimia'),
(5,00006,'Bob Frapples','Mexico City'),
(6,00007,'Walter Melon','Amsterdam'),
(7,00008,'Shonda Leer','São Paulo');


INSERT INTO lab_mysql.invoices (ID, Invoice_Number, Date, Car, Customer, Sales_Person)
VALUES (0,852399038,'2018-08-22',0,1,3),
(1,731166526,'2018-12-31',3,0,5),
(2,271135104,'2019-01-22',2,2,7);


INSERT INTO lab_mysql.customers (ID, Customer_ID, Name, Phone, Email, Address, City, State, Country, Postal)
VALUES (0,10001,'Pablo Picasso',34636176382,'-','Paseo de la Chopera, 14','Madrid','Madrid','Spain',28045),
(1,20001,'Abraham Lincoln',13059077086,'-','120 SW 8th St','Miami','Florida','United States',33130),
(2,30001,'Napoléon Bonaparte',33179754000,'-','40 Rue du Colisée','Paris','Île-de-France','France',75008);