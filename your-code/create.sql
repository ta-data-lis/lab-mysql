create database if not exists lab_mysql;
use lab_mysql;
create table if not exists cars(Cars_id int primary key auto_increment,
Vin varchar(30),
Manufacturer varchar(30),
Model varchar(30), 
Car_Year year,
Color varchar(30));

create table if not exists customers(Customers_id int primary key auto_increment,
ID varchar(50),
Customer_Name varchar(50),
PhoneNumber varchar(50),
Email varchar(40),
Address varchar(50),
City varchar(30),
State_Province varchar(20),
Country varchar(10),
Zip varchar(30));

create table if not exists salespersons(Salespersons_id int primary key auto_increment,
ID varchar(30),
Salesperson_Name varchar(30),
store varchar(5));

create table if not exists invoices(Invoices_id int primary key auto_increment,
InvoiceNumber varchar(30),
InvoiceDate date,
Cars_id int,
Customers_id int,
Salespersons_id int,
foreign key(Cars_id) references cars(Cars_id),
foreign key(Customers_id) references customers(Customers_id),
foreign key(Salespersons_id) references salespersons(Salespersons_id)
);

