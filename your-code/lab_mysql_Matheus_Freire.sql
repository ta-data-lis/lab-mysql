 CREATE DATABASE lab_mysql;

CREATE TABLE IF NOT EXISTS
lab_mysql.Cars(
car_ID INT ,
VIN VARCHAR(60) NOT NULL,
manufacturer VARCHAR(60),
model VARCHAR(60),
year_ INT, 
color VARCHAR(60)
);

CREATE TABLE IF NOT EXISTS
lab_mysql.Customers(
customer_ID INT,
name_ VARCHAR(60),
phone VARCHAR(60),
email VARCHAR(60),
address VARCHAR(60),
city VARCHAR(60),
state_province VARCHAR(60),
country VARCHAR(60),
zip_code  INT
);


CREATE TABLE IF NOT EXISTS
lab_mysql.Sales_Person(
staff_ID INT,
name_ VARCHAR(60),
store VARCHAR(60)
);


CREATE TABLE IF NOT EXISTS
lab_mysql.Invoices(
invoice_number INT,
invoice_date Date,
car INT,
customer INT,
sales_person INT 
);
 
 
 INSERT INTO lab_mysql.cars (car_ID, VIN, Manufacturer, Model, year_, Color)
 VALUES
 (0 , '3K096I98581DHSNUP' , 'Volkswagen' , 'Tiguan' , 2019 , 'Blue'),
 (1 , 'ZM8G7BEUQZ97IH46V' , 'Peugeot' , 'Rifter' , 2019 , 'Red'),
 (2 , 'RKXVNNIHLVVZOUB4M' , 'Ford' , 'Fusion' , 2018 , 'White'),
 (3 , 'HKNDGS7CU31E9Z7JW' , 'Toyota' , 'RAV4' , 2018 , 'Silver'),
 (4 , 'DAM41UDN3CHU2WVF6' , 'Volvo' , 'V60' , 2019 , 'Gray'),
 (5 , 'DAM41UDN3CHU2WVF6' , 'Volvo' , 'V60 Cross Country' , 2019 , 'Gray');
 

 SELECT * 
 FROM lab_mysql.cars;

INSERT INTO lab_mysql.customers (customer_ID, name_, phone, email, address, city, state_province, country, zip_code)
 VALUES
 (10001 , 'Pablo Picasso' , '+34 636 17 63 82' ,'-' , 'Paseo de la Chopera 14' ,  'Madrid' , 'Madrid' , 'Spain' , 28045),
 (20001 , 'Abraham Lincoln' ,  '+1 305 907 7086' , '-' , '120 SW 8th St' , 'Miami' , 'Florida' , 'United States ', 33130),
 (30001 , 'Napoléon Bonaparte'  , '+33 1 79 75 40 00' ,'-' , '40 Rue du Colisée' , 'Paris' , 'Île-de-France' , 'France' , 75008);

 
 SELECT * 
 FROM lab_mysql.customers;

 INSERT INTO lab_mysql.sales_person (staff_ID, name_,store)
 VALUES
 (00001 , 'Petey Cruiser' , 'Madrid'),
 (00002 , 'Anna Sthesia',  'Barcelona'),
 (00003 , 'Paul Molive' , 'Berlin'),
 (00004 , 'Gail Forcewind' , 'Paris'),
 (00005 , 'Paige Turner' , 'Miami'),
 (00006 , 'Bob Frapples' , 'Mexico City'),
 (00007 , 'Walter Melon' , 'Amsterdam'),
 (00008 , 'Shonda Leer' , 'São Paulo');

 SELECT * 
 FROM lab_mysql.sales_person;

 INSERT INTO lab_mysql.invoices (invoice_number, invoice_date, car, customer, sales_person)
 VALUES
 (852399038 , '2018-08-22' , 0 , 1 , 3 ),
 (731166526 , '2018-12-31' , 3 , 0 , 5 ),
 (271135104 , '2019-01-22' , 2 , 2 , 7);


 SELECT *  
 FROM lab_mysql.invoices;