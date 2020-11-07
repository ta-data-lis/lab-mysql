USE lab_mysql;

CREATE TABLE `cars` (
  `VIN` varchar(255),
  `manufacturer` varchar(255),
  `model` varchar(255),
  `year` int,
  `color` varchar(255)
);

-- DROP TABLE IF EXISTS `cars`;

CREATE TABLE `customers` (
  `customer_id` varchar(255),
  `customer_name` varchar(255),
  `phone_number` varchar(255),
  `email` varchar(255),
  `address` varchar(255),
  `city` varchar(255),
  `state_province` varchar(255),
  `country` varchar(255),
  `postal_code` varchar(255)
);

-- DROP TABLE IF EXISTS `customers`;

CREATE TABLE `salespersons` (
  `staff_id` varchar(255),
  `salespersons_name` varchar(255),
  `store` varchar(255)
);

-- DROP TABLE IF EXISTS `salespersons`;

CREATE TABLE `invoices` (
  `invoice_number` int,
  `date` varchar(255),
  `number_of_cars` int,
  `number_of_customers` int,
  `number_of_salespersons` int
);

-- DROP TABLE IF EXISTS `invoices`;