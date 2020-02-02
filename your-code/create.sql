CREATE DATABASE lab_mysql;
use lab_mysql;
create table salesperson(
staff_id CHAR(7),
name_sell VARCHAR (40),
store VARCHAR (40));
create table cars(
id_car CHAR(12),
manufacturer VARCHAR(40),
model VARCHAR(40),
year_car YEAR,
color VARCHAR(20));
create table customers(
cust_id CHAR(11),
cust_name VARCHAR(40),
phone CHAR(12),
email VARCHAR(40),
adress VARCHAR(40),
city VARCHAR (10),
country VARCHAR (20));
create table invoices(
inv_num CHAR(10),
date_inv DATE,
id_car CHAR(12),
cust_id CHAR(11),
staff_id CHAR(7),
price DECIMAL); 