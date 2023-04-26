create database if not exists lab_mysql;

use lab_mysql;

SET sql_mode = NO_AUTO_VALUE_ON_ZERO;

create table if not exists cars(id int primary key AUTO_INCREMENT,
								vin varchar(60),
                                manufacturer varchar(30),
                                model varchar(50),
                                year YEAR,
                                color varchar(15));
                                
create table if not exists customers(id int primary key AUTO_INCREMENT,
								customers_id int,
                                name varchar(30),
                                phone varchar(15),
                                email varchar(40),
                                address varchar(60),
                                city varchar(30),
                                state_province varchar(23),
                                country varchar(34),
                                postal int);

create table if not exists salespersons(id int primary key AUTO_INCREMENT,
								staff_id int,
                                name varchar(30),
                                store varchar(50));
                                
create table if not exists invoices(id int primary key AUTO_INCREMENT,
								invoices_number int,
                                date DATE,
                                car int,
                                customer int,
                                sales_person int);