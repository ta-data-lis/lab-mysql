create database car_company;

create table if not exists cars (
car_id int primary key,
vin varchar(52),
manufacturer varchar(52),
model varchar(52),
year int,
color varchar(52)
);


create table if not exists customers (
id_c int primary key,
customer_id int,
name_cost varchar(52),
phone_number varchar(52),
email varchar(52) default 'data_team@ironhack.com',
adress varchar(52),
city varchar(52),
st_province varchar(52),
country varchar(52),
zip int
);

create table if not exists salesperson (
id_s int primary key,
staff_id int,
name_staff  varchar(52),
store_company varchar(52)
);

create table if not exists invoices (
id_i int primary key,
inv_number int,
date varchar(52),
car_id int,
id_c int,
id_s int
);

alter table invoices
ADD foreign key (car_id) references cars(car_id);

alter table invoices
ADD foreign key (id_c) references customers(id_c);

alter table invoices
ADD foreign key (id_s) references salesperson(id_s);


select *
from customers;

select*
from cars;


