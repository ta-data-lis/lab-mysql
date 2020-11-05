
USE `lab_mysql`;
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

SELECT DATE_FORMAT(CURDATE(), '%d/%m/%Y');



INSERT INTO `Cars` VALUES (0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
(NULL, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
(NULL, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
(NULL, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
(NULL, "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
(NULL, "DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

INSERT INTO `Costumers` VALUES
(0, 10001 ,"Pablo Picasso",	"+34 636 17 63 82",	"-", "Paseo de la Chopera, 14",	"Madrid", "Madrid", "Spain", "28045"),
(NULL, 20001, "Abraham Lincoln", "+1 305 907 7086", "-", "120 SW 8th St", "Miami", "Florida", "United States", "33130"),
(NULL, 30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée", "Paris", "Île-de-France", "France States", "75008");

SELECT *
FROM `Salespersons`;
INSERT INTO `Salespersons` VALUES
(0, 00001, "Petey Cruiser", "Madrid"),
(NULL, 00002, "Anna Sthesia", "Barcelona"),
(NULL, 00003, "Paul Molive", "Berlin"),
(NULL, 00004, "Gail Forcewind", "Paris"),
(NULL, 00005, "Paige Turner", "Mimia"),
(NULL, 00006, "Bob Frapples", "Mexico City"),
(NULL, 00007, "Walter Melon", "Amsterdam"),
(NULL, 00008, "Shonda Leer", "São Paulo");

INSERT INTO Invoices VALUES
(0, 852399038, 22-08-2018, 0, 1, 3),
(NULL, 731166526, 31-12-2018, 3, 0, 5),
(NULL, 271135104, 22-01-2019, 2, 2, 7);

SELECT *
FROM `Invoices`;
Select *
FROM `Cars`;
SELECT *
FROM `Costumers`;
SELECT *
FROM `Salespersons`;