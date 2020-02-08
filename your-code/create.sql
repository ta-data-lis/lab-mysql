USE lab_mysql;

CREATE TABLE IF NOT EXISTS `cars` (
	`car_id` SMALLINT AUTO_INCREMENT PRIMARY KEY,
	`VIN` VARCHAR(20) DEFAULT NULL, 
	`manufacturer` VARCHAR(15) DEFAULT NULL, 
	`model` VARCHAR(15), 
	`year` YEAR DEFAULT NULL,
	`colour` VARCHAR(10));

CREATE TABLE IF NOT EXISTS `customers` (
	`id_cust` SMALLINT AUTO_INCREMENT PRIMARY KEY,
	`Customer_ID` VARCHAR(9) DEFAULT NULL,
	`Name` VARCHAR(30) DEFAULT NULL,
	`Phone` VARCHAR(15) DEFAULT NULL,
	`Email` VARCHAR(20) DEFAULT NULL,
	`Address` VARCHAR(40) DEFAULT NULL,
	`City` VARCHAR(9) DEFAULT NULL,
	`State_Province` VARCHAR(15) DEFAULT NULL,
	`Country` VARCHAR(15) DEFAULT NULL,
	`Postal` VARCHAR(6) DEFAULT NULL);
	
CREATE TABLE IF NOT EXISTS `sales_persons` (
	`id_salesper` TINYINT AUTO_INCREMENT PRIMARY KEY,
	`Staff_ID` VARCHAR(5) DEFAULT NULL,
	`Name` VARCHAR(30) DEFAULT NULL,
	`Store` ENUM('Madrid', 'Barcelona', 'Berlin', 'Paris', 'Amsterdam', 'SãoPaulo') DEFAULT NULL);

CREATE TABLE IF NOT EXISTS invoices (
	`id` SMALLINT AUTO_INCREMENT PRIMARY KEY,
	`invoice_number` VARCHAR(9),
	`date` DATETIME DEFAULT NULL,
	`car_id` SMALLINT,
	`id_cust` SMALLINT,
	`id_salesper` TINYINT DEFAULT NULL,
	KEY `car_id` (`car_id`),
  	KEY `id_cust` (`id_cust`),
	KEY `id_salesper` (`id_salesper`),
	CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  	CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`id_cust`) REFERENCES `customers` (`id_cust`) ON DELETE CASCADE ON UPDATE CASCADE,
  	CONSTRAINT `invoices_ibfk_3` FOREIGN KEY (`id_salesper`) REFERENCES `sales_persons` (`id_salesper`) ON DELETE CASCADE ON UPDATE CASCADE);
