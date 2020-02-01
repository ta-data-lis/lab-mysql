create database lab_mysq;

CREATE TABLE IF NOT EXISTS cars (
Unnamed INT,
VIN VArchar(20) PRIMARY KEY,
manufacturer VARCHAR (100),
model VARCHAR (100),
year INT,
priceBuyed FLOAT,
StoreID INT,
FOREIGN KEY (`StoreID`) REFERENCES `stores` (`StoreID`)
);

CREATE TABLE IF NOT EXISTS salespersons (
Unnamed INT,
StaffID INT PRIMARY KEY,
hiringdate datetime,
jobfunction Varchar(50),
wage Float,
StoreID INT,
FOREIGN KEY (`StoreID`) REFERENCES `stores` (`StoreID`)
);

CREATE TABLE IF NOT EXISTS customers (
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
VIN INT,
CustomerID INT,
StaffID INT,
FOREIGN KEY (`VIN`) REFERENCES `cars` (`VIN`),
FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CUstomerID`),
FOREIGN KEY (`StaffID`) REFERENCES salespersons (`StaffID`)
);
