---------------------------------------
-- Change database context
---------------------------------------
USE lab_mysql;
---------------------------------------
-- Table structure for table CARS
---------------------------------------
CREATE TABLE cars (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `vin` VARCHAR(50) NOT NULL,
    `manufacturer` VARCHAR(25) NOT NULL,
    `model` VARCHAR(50) NOT NULL,
    `year` YEAR,
    `color` VARCHAR(10),
    PRIMARY KEY (`id`)
);
---------------------------------------
-- Table structure for table CUSTOMERS
---------------------------------------
CREATE TABLE customers (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `customer_id` INT NOT NULL,
    `name` VARCHAR(100),
    `phone` VARCHAR(20),
    `email` VARCHAR(50),
    `address` VARCHAR(50),
    `city` VARCHAR(50),
    `state_province` VARCHAR(50),
    `country` VARCHAR(50),
    `postal` VARCHAR(10),
    PRIMARY KEY (`id`)
);
---------------------------------------
-- Table structure for table SALESPERSONS
---------------------------------------
CREATE TABLE salespersons (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `staff_id` INT NOT NULL,
    `name` VARCHAR(50),
    `store` VARCHAR(50),
    PRIMARY KEY (`id`)
);
---------------------------------------
-- Table structure for table INVOICES
---------------------------------------
CREATE TABLE invoices (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `invoice_number` INT NOT NULL,
    `date` DATE NOT NULL,
    `car` SMALLINT UNSIGNED,
    `customer` SMALLINT UNSIGNED,
    `sales_person` SMALLINT UNSIGNED,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`car`) REFERENCES cars(`id`),
    FOREIGN KEY (`customer`) REFERENCES customers(`id`),
    FOREIGN KEY (`sales_person`) REFERENCES salespersons(`id`)
);
---------------------------------------