drop table if exists cars;
drop table if exists customers;
drop table if exists invoices;
drop table if exists salespersons;
drop table if exists stores;

create table if not exists
cars(
ID int primary key auto_increment,
VIN varchar(15) not null,
manufacturer varchar(25) not null,
model varchar(10) not null,
year int,
color varchar(10) default 'Unknown'
);

create table if not exists
customers(
ID int primary key auto_increment,
cust_id varchar(15),
name varchar(25) not null,
phone varchar(20),
email varchar(50) default 'name@mail.com',
address varchar(50),
city varchar(25) not null,
state varchar(15) not null,
country varchar(15) not null,
postal_code varchar(10) not null
);

create table if not exists
salespersons(
ID int primary key auto_increment,
salesperson_id varchar(15),
name varchar(25) not null,
store varchar(25) not null
);

create table if not exists
invoices(
ID int primary key auto_increment,
invoice_num int not null,
date datetime default current_timestamp,
car varchar(20) not null,
customer varchar(15) not null,
salesperson varchar(15) not null
);

