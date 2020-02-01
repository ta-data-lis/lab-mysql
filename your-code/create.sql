create database lab_mysq;

CREATE TABLE IF NOT EXISTS Cars (
Unnamed INT,
VIN INT PRIMARY KEY,
manufacturer VARCHAR (100),
model VARCHAR (100),
manufacturer VARCHAR (100),
year INT,
priceBuyed FLOAT,
CONSTRAINT `storID_ibfk` FOREIGN KEY (`storeID`) REFERENCES `stores` (`storeID`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS salespersons (
Unnamed INT,
StaffID INT PRIMARY KEY,
hiringdate datetime,
jobfunction Varchar(50),
wage Float,
CONSTRAINT `storID_ibfk` FOREIGN KEY (`storeID`) REFERENCES `stores` (`storeID`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS salespersons (
Unnamed INT,
CustomerID INT PRIMARY KEY,
nameC Varchar(200),
phoneNumber INT,
email Varchar(150),
adress varchar(300),
city varchar(50),
state varchar(50),
country varchar(50),
ZIP Int
);

CREATE TABLE IF NOT EXISTS Stores (
Unnamed INT,
StoreID INT PRIMARY KEY,
phoneNumber INT,
email Varchar(150),
adress varchar(300),
city varchar(50),
state varchar(50),
country varchar(50),
ZIP Int
);


CREATE TABLE IF NOT EXISTS Invoices (
Unnamed INT,
InvoiceNr INT PRIMARY KEY,
dateI datetime,
pricePayed FLOAT,
CONSTRAINT `VIN_ibfk` FOREIGN KEY (`VIN`) REFERENCES `cars` (`VIN`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `CustomerID_ibfk` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`VIN`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `VIN_ibfk` FOREIGN KEY (`VIN`) REFERENCES `cars` (`VIN`) ON DELETE CASCADE ON UPDATE CASCADE,
);
