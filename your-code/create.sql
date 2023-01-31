create table if not exists Cars (
ID int, 
VIN varchar(30), 
Manufacturer varchar(30), 
Model varchar(30), 
year int, 
color varchar(30)); 

create table if not exists Customers (
ID int,
 Name varchar(30),
 Phone varchar(30),
 Email varchar(30),
 Address varchar(30),
 city varchar(30),
 state varchar(30),
 country varchar(30),
 postal int);
 
 create table if not exists Invoices (
 ID int,
 InvoiceNumber int,
 Date date,
 Car int,
 Customer int,
 SalesPerson int);
 
 create table if not exists Salespersons (
 ID int,
 StaffID int,
 Name varchar(30),
 Store varchar(30));