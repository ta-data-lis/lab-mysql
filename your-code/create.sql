create database lab_mysql;
use lab_mysql;

create table invoices (ID int primary key, invoice_num int, i_date date, car_id int, customer_ID int, staff_ID int);
describe invoices;

create table salesperson (ID int primary key, staff_ID int, s_name varchar (50), store varchar (25));
describe salesperson;

create table cars ( ID int primary key, VIN varchar(25),manufacturer varchar(25), model varchar (25), production_year year, color varchar(10));
describe cars;

create table customers ( ID int primary key, customer_ID int, c_name varchar (50), phone_number int, email varchar (30), address varchar (60), city varchar (25), state varchar (25), country varchar (25), postal_code int);
describe customers