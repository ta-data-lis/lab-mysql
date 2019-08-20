drop table if exists salesperson;
create table salesperson (
staff_ID varchar (20) not null, 
staff_name varchar (20) default null,
store_ID varchar (20) not null,
PRIMARY KEY (staff_ID)
);

drop table if exists customers;
create table customers (
customer_ID varchar (20) not null,
customer_name varchar (20) default null,
phone_number varchar (20) DEFAULT NULL, 
email varchar (20) DEFAULT NULL,
address varchar (20) DEFAULT NULL,
city varchar (20) DEFAULT NULL,
state_province varchar (20) DEFAULT NULL,
country varchar (20) DEFAULT NULL,
zip_code varchar (20) DEFAULT NULL,
PRIMARY KEY (customer_ID)
);

drop table if exists cars;
create table cars (
car_ID INT (20) not null,
VIN varchar (20) not null,
manufacturer varchar (20) not null,
model varchar (10) not null, 
year int (4) not null,
color char (5) not null,
PRIMARY KEY (car_ID)
);

drop table if exists invoice;
create table invoice (
ref_invoice int(20) not null,
date_time datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
customer_ID varchar (20) not null,
customer_name varchar (20) default null,
staff_ID varchar (20) not null,
staff_name varchar (20) default null,
car_ID varchar (20) not null,
quantity smallint(6) NOT NULL,
PRIMARY KEY (ref_invoice),
KEY (customer_ID),
KEY (staff_ID),
KEY (car_ID)
);