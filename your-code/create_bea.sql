 # `address` varchar(40) DEFAULT NULL,
  #`city` varchar(20) DEFAULT NULL,
  #`state` char(2) DEFAULT NULL,
  #`zip` char(5) DEFAULT NULL,
  #`contract` tinyint(4) NOT NULL,
  #PRIMARY KEY (`au_id`)

CREATE TABLE `the_cars` (
  `vin_id` varchar(30) NOT NULL,
  `manufaturer` char(40) NOT NULL,
  `model` char(40) NOT NULL,
  `color` char(12) NOT NULL,
  `price` dec DEFAULT NULL,
  `currency` char(6) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  PRIMARY KEY (`vin_id`));
  
  select * from the_cars;
  
  CREATE TABLE `customer` (
  `customer_id` varchar(30) NOT NULL,
  `name` char(40) NOT NULL,
  `phone` char(12) NOT NULL,
  `email` char(20) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL,
  `country` char(3) DEFAULT NULL,
  PRIMARY KEY (`customer_id`));
  
  select * from customer;
  
  CREATE TABLE `staff` (
  `staff_id` varchar(30) NOT NULL,
  `store_id` varchar(30) NOT NULL,
  `name` char(40) NOT NULL,
  `phone` char(12) NOT NULL,
  `email` char(20) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL,
  `country` char(3) DEFAULT NULL,
  PRIMARY KEY (`staff_id`));
  
  select * from staff;
  
  CREATE TABLE `store` (
  `store_id` varchar(30) NOT NULL,
  `name` char(40) NOT NULL,
  `phone` char(12) NOT NULL,
  `email` char(20) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL,
  `country` char(3) DEFAULT NULL,
  PRIMARY KEY (`store_id`));
  
  select * from store;
  
   CREATE TABLE `invoices` (
  `inv_id` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  `vin_id` varchar(30) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `staff_id` varchar(30) NOT NULL,
  `store_id` varchar(30) NOT NULL,
  PRIMARY KEY (`inv_id`));
  
  select * from invoices;
  
  