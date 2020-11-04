SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
SET SQL_SAFE_UPDATES = 0;
USE lab_mysql;

LOCK TABLES `Cars` WRITE;
DELETE FROM Cars;
INSERT INTO `Cars` VALUES
('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray');
/*('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray'); THIS WILL BE SORTED OUT WITH AN UPDATE*/
UNLOCK TABLES;
SELECT * FROM Cars;

LOCK TABLES `Customers` WRITE;
DELETE FROM Customers;
INSERT INTO `Customers` VALUES
(10001,'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera,14','Madrid','Madrid','Spain',28045),
(20001,'Abraham Lincoln','13059077086','-','120 SW 8th St','Miami','Florida','United States',33130),
(30001,'Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','Paris','Île-de-France','France',75008);
UNLOCK TABLES;
SELECT * FROM Customers;

LOCK TABLES `Salespersons` WRITE;
DELETE FROM Salespersons;
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
SELECT * FROM Salespersons;

LOCK TABLES `Invoices` WRITE;
DELETE FROM Invoices;
INSERT INTO `Invoices` VALUES
(852399038,43334,'3K096I98581DHSNUP',20001,4),
(731166526,43465,'HKNDGS7CU31E9Z7JW',10001,6),
(271135104,43487,'RKXVNNIHLVVZOUB4M',30001,8);
UNLOCK TABLES;
SELECT * FROM Invoices;



