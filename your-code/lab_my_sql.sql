CREATE SCHEMA lab3;


CREATE TABLE IF NOT EXISTS
lab3.cars(
car_ID INT PRIMARY KEY,
VIN VARCHAR(52) NOT NULL,
Manufacturer VARCHAR(52)  DEFAULT 'Brand undefined',
Model VARCHAR(52),
Year INT, 
Color VARCHAR(52)
);

CREATE TABLE IF NOT EXISTS
lab3.customers(
customer_ID INT PRIMARY KEY,
name VARCHAR(200) NOT NULL,
phone VARCHAR(52),
email VARCHAR(52)  DEFAULT '-----@----',
address VARCHAR(200),
city VARCHAR(52),
state_province VARCHAR(82),
country VARCHAR(52),
zip_code  INT
);

CREATE TABLE IF NOT EXISTS
lab3.customers(
customer_ID INT PRIMARY KEY,
name VARCHAR(200) NOT NULL,
phone VARCHAR(52),
email VARCHAR(52)  DEFAULT '-----@----',
address VARCHAR(200),
city VARCHAR(52),
state_province VARCHAR(82),
country VARCHAR(52),
zip_code  INT
);

CREATE TABLE IF NOT EXISTS
lab3.sales_person(
staff_ID INT PRIMARY KEY,
name VARCHAR(200) NOT NULL,
store VARCHAR(90) DEFAULT 'central_store'
);


CREATE TABLE IF NOT EXISTS
lab3.invoices(
invoice_number INT PRIMARY KEY,
invoice_date Date,
car INT NOT NULL,
customer INT NOT NULL,
sales_person INT NOT NULL,
FOREIGN KEY (car) REFERENCES cars(car_ID),
FOREIGN KEY (customer) REFERENCES customers(customer_ID),
FOREIGN KEY (sales_person) REFERENCES sales_person(staff_ID)
);
 CREATE DATABASE lab_mysql; #But I already created a database called lab3 with all the tables attached 
 
 
 INSERT INTO lab3.cars (car_ID, VIN, Manufacturer, Model, Year, Color)
 VALUES
 (0 , '3K096I98581DHSNUP' , 'Volkswagen' , 'Tiguan' , 2019 , 'Blue'),
 (1 , 'ZM8G7BEUQZ97IH46V' , 'Ford' , 'Rifter' , 2010 , 'White'),
 (2 , 'HKNDGS7CU31E9Z7JW' , 'Peugeot' , 'Fusion' , 2021 , 'Silver');
 
 ###Checking if it is correct
 select* from lab3.cars;

INSERT INTO lab3.customers (customer_ID, name, phone, email, address, city, state_province, country, zip_code)
 VALUES
 ( 10001 , 'Pablo Picasso' , '+34 636 17 63 82','','Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
 ( 20001 , 'Milena Perez' , '9475374950','milena@gmail.com','Rua das indias, 89', 'Lisboa', 'Lisboa', 'Portugal', 26789475),
 ( 30001 , 'Ines Pacheco' , '(+34)63617 382','ines@ironhack.com','Rua dos passaros, 17', 'Coimbra', 'Coimbra', 'Portugal', 8576032);
 
  ###Checking if it is correct
 select* from lab3.customers;

 INSERT INTO lab3.sales_person (staff_ID, name,store)
 values
 (00001 , 'Petey Cruiser' , 'Madrid'),
 (00002 , 'Anna Sthesia' , 'Barcelona'),
 (00003 , 'Paul Molive' , 'Berlin');
 
   ###Checking if it is correct
 select* from lab3.sales_person;
 
 INSERT INTO lab3.invoices (invoice_number, invoice_date, car, customer, sales_person)
 values
 ( 852399038, '2018-08-22', 0 , 10001,  00001),
 ( 457574549, '2020-12-01', 1 , 20001,  00002),
 ( 985759374, '2021-11-15', 2 , 30001,  00003);
 
 select* from lab3.invoices



