CREATE DATABASE lab_mysql;
USE lab_mysql;
create table cars (
    Car_ID varchar (100),
    VIN varchar(100),
    manufacturer varchar(100),
    model varchar(100),
    year varchar(100),
    color varchar(100),
	PRIMARY KEY (Car_ID)
);

create table customers (
    customer_ID varchar(100),
    name varchar(100), 
    phone varchar(100), 
    email varchar(100), 
    address varchar(100), 
    city varchar(100), 
    state_province varchar(100), 
    country varchar(100), 
    zip_postal varchar(100),
	PRIMARY KEY (Customer_ID)
);

create table salespersons (
    staff_ID varchar(100),
    name varchar(100),
    store varchar(100),
    store_ID varchar (100),
    PRIMARY KEY (staff_ID),
    FOREIGN KEY (store_ID) REFERENCES stores(store_ID)
);

create table invoices (
    invoice_number varchar(100),
    date varchar(100),
    Car_ID varchar(100),
    customer_ID varchar(100),
    staff_ID varchar(100),
	PRIMARY KEY (invoice_number),
    FOREIGN KEY (Car_ID) REFERENCES cars(Car_ID),
	FOREIGN KEY (staff_ID) REFERENCES salespersons(staff_ID),
    FOREIGN KEY (customer_ID) REFERENCES customers(customer_ID)
);

create table stores (
store_ID varchar(100), 
name varchar (100),
PRIMARY KEY (store_ID)
);