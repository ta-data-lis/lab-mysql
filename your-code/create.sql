USE lab_mysql;
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

DROP TABLE INVOICES;
DROP TABLE CARS;
DROP TABLE CUSTOMERS;
DROP TABLE STAFF;


CREATE TABLE CARS
(
ID int NOT NULL AUTO_INCREMENT,
VIN varchar(25) NOT NULL,
Manufacturer varchar(20),
Model varchar(20),
Year int(4),
Color varchar(10),
PRIMARY KEY (ID)
);

CREATE TABLE CUSTOMERS
(
ID int NOT NULL AUTO_INCREMENT,
Customer_Id bigint(10) NOT NULL,
Name varchar(25),
Phone_number varchar(20),  
Email varchar(50),
Address varchar(50),
City varchar(25),
State_Province varchar(25),
Country varchar(15),
Postal bigint,
PRIMARY KEY (ID)
);



CREATE TABLE STAFF
(
ID int NOT NULL AUTO_INCREMENT,
Employee_Id bigint(10) NOT NULL,
Name varchar(25),
Store varchar(15) NOT NULL,  
PRIMARY KEY (ID)
);



CREATE TABLE INVOICES
(
ID int NOT NULL AUTO_INCREMENT,
Invoice_Id bigint(10) NOT NULL,
Date_Invoice date,
Car int NOT NULL,
Customer int NOT NULL,
Sales_Person int NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (Car) REFERENCES CARS(ID),
FOREIGN KEY (Customer) REFERENCES CUSTOMERS(ID),
FOREIGN KEY (Sales_Person) REFERENCES STAFF(ID)
);
