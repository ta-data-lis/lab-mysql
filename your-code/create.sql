create table CARS (VIN varchar(50),
Manufacturer varchar(50),
Model varchar(20),
Car_year timestamp,
Color varchar (20));

select * from lab_mysql.cars;

create table INVOICES (ID smallint, INV_number int,
Date timestamp,
Car varchar(20),
Customer varchar(20),
Salesperson varchar (20));

create table CUSTOMERS (ID smallint, customer_id smallint,
Name varchar(50),
Phone_number varchar(20),
Email varchar (50),
Address varchar (100),
City varchar (50),
State varchar (50),
Country varchar (30),
Zip_code varchar (20));

create table SALESPERSONS (ID smallint, Staff_id smallint,
Name varchar(50),
Store varchar(20));

alter table cars
add ID smallint;
