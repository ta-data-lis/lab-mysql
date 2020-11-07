USE lab_mysql;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
	`VIN` varchar(20) NOT NULL,
    `manufacturer` varchar(20) NOT NULL,
    `model` varchar(20) NOT NULL,
    `year` year NOT NULL,
    `color` varchar(20) NOT NULL,
    `id`  int NOT NULL auto_increment,
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
    `id`  int primary KEY auto_increment,
    `customer_ID` varchar(20) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SELECT * from customers;

DROP TABLE IF EXISTS `Salesperson`;

CREATE TABLE `Salesperson` (
  `staff_ID` CHAR(5),
  `name` varchar(20) NOT NULL,
  `store` varchar(20) NOT NULL,
  `id` int PRIMARY KEY auto_increment
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `Invoices`;
CREATE TABLE `Invoices` (
  `Invoice_number` varchar(20) NOT NULL,
  `sale_date` date NOT NULL,
  `car` varchar(20) NOT NULL,
  `customer` varchar(20) NOT NULL,
  `Salesperson` varchar(20) NOT NULL,
  `id` int PRIMARY KEY auto_increment
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO cars (VIN,manufacturer,model,year,color)
VALUES ('ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red'),('RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White'),('HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver'),('DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray'),('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country','2019','Gray');

SELECT * from cars;

select * from customers c ;

alter table customers 
modify address varchar(50);

insert into customers (name,phone_number,email,address,city,state_province,country,zip,customer_ID)
values ('Pablo Picasso','+34 636176382','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045','10001'),('Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States','33130','20001'),('Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','Paris','Île-de-France','France','75008','3001');

select * from salesperson s2 ;

insert into salesperson (staff_ID,name,store)
values ('00001','Petey Cruiser','Madrid'),('00002','Anna Sthesia','Barcelona'),('00003','Paul Molive','Berlin'),('00004','Gail Forcewind','Paris'),('00005','Paige Turner','Mimia'),('00006','Bob Frapples','Mexico City'),('00007','Walter Melon','Amsterdam'),('00008','Shonda Leer','São Paulo');

select * from invoices i ;

insert into invoices (Invoice_number,sale_date,car,customer,Salesperson)
values ('8523990389','2018-08-22','0','1','3'),('731166526','2018-12-31','3','0','5'),('271135104','2019-01-22','2','2','7');

alter table salesperson 
where 
