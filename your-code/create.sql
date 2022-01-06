use lab_mysql;
CREATE TABLE IF NOT EXISTS `cars` (
	`car_id` SMALLINT AUTO_INCREMENT PRIMARY KEY,
	`VIN` VARCHAR(25), 
	`manufacturer` VARCHAR(20), 
	`model` VARCHAR(15), 
	`year` YEAR ,
	`colour` VARCHAR(10));
    
CREATE TABLE IF NOT EXISTS `customers` (
	`id_cust` SMALLINT AUTO_INCREMENT PRIMARY KEY,
	`Customer_ID` VARCHAR(9),
	`Name` VARCHAR(25),
	`Phone` VARCHAR(15),
	`Email` VARCHAR(20),
	`Address` VARCHAR(50),
	`City` VARCHAR(10),
	`State_Province` VARCHAR(25),
	`Country` VARCHAR(20),
	`Postal` VARCHAR(10) );
    
CREATE TABLE IF NOT EXISTS `sales_persons` (
	`id_salesper` TINYINT AUTO_INCREMENT PRIMARY KEY,
	`Staff_ID` VARCHAR(5),
	`Name` VARCHAR(30),
	`Store` ENUM('Madrid', 'Barcelona', 'Berlin', 'Paris', 'Amsterdam', 'SãoPaulo') DEFAULT NULL);
CREATE TABLE IF NOT EXISTS invoices (
	`id` SMALLINT AUTO_INCREMENT PRIMARY KEY,
	`invoice_number` VARCHAR(9),
	`date` DATETIME ,
	`car_id` SMALLINT,
	`id_cust` SMALLINT,
	`id_salesper` smallINT );    