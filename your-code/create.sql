/* Create table Cars*/
CREATE TABLE
car.vehicel(
ID smallint auto_increment primary key,
VIN varchar (20) not null,
manufacturer varchar (20),
model varchar (20),
car_year smallint,
color varchar (20)
);
/* Create table Customers*/
CREATE TABLE
car.Customers(
ID smallint auto_increment primary key,
customer_id smallint not null,
customer_name varchar (40) not null,
phone_number smallint,
email varchar (40),
address varchar (50),
city varchar (20),
state_province varchar (20),
country varchar (20),
zip_postal_code varchar (10)
);
/* Create table salespersons*/
CREATE TABLE
car.Salespersons(
ID smallint auto_increment primary key,
staff_id int not null,
sales_name varchar (40),
store varchar (20)
);
/* Create table Invoices*/
CREATE TABLE
car.invoices(
ID smallint auto_increment primary key,
invoice_number smallint not null,
invoice_date date,
car smallint not null,
customer smallint not null,
salesperson smallint
);