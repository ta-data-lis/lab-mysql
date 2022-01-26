/* Challenge 1 - Design the Database */

/* A DB diagram file can be found in the folder. 
The different tables of the DB are displayed. 
For each table the columns, types of the attributes, primary keys (red) and foreign keys (green) are indicated.
Connections between the tables are also indicated with a single line.
The relationships between the tables are as follows:
- CARS-COSTUMERS: one to one;
- CUSTOMERS-CARS: one to many;
- SALES PERSON-INVOICE: one to many;
- CUSTOMERS-SALES PERSON: one to many. */ 


/* Challenge 2 - Create the Database and Tables */

CREATE DATABASE lab_mysql;

CREATE TABLE IF NOT EXISTS
lab_mysql.cars(     
car_id INT PRIMARY KEY,
car_vin VARCHAR(52),
manufacturer_id VARCHAR(52),
model VARCHAR(52),
year INT,
color VARCHAR(52));

CREATE TABLE IF NOT EXISTS
lab_mysql.costumers(     
customer_id INT PRIMARY KEY,
customer_name VARCHAR(52),
phone VARCHAR(52),
email VARCHAR(52),
address VARCHAR(52),
city VARCHAR(52),
state VARCHAR(52),
country VARCHAR(52),
postal_code INT);

CREATE TABLE IF NOT EXISTS
lab_mysql.sales_person(     
salepers_id INT PRIMARY KEY,
staff_id INT,
name VARCHAR(52),
store VARCHAR(52));

CREATE TABLE IF NOT EXISTS
lab_mysql.invoices(   
invoice_id INT PRIMARY KEY,
inv_num INT,
date INT,
car_id INT,
customer_id INT,
salespers_id INT);


/* Challenge 3 - Seeding the Database */

INSERT INTO lab_mysql.cars(car_id, car_vin, manufacturer_id, model, year, color)
VALUES
(0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
(1, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2018, "Red"),
(2, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
(3, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2019, "Silver"),
(4, "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
(5, "DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

 INSERT INTO lab_mysql.costumers(customer_id, customer_name, phone, address, city, state, country, postal_code)
VALUES
(10001, "Pablo Picasso", "+34 636 17 63 82", "Paseo de la Chopera, 14", "Madrid",	"Madrid", "Spain", 28045),
(20001, "Abraham Lincoln", "+1 305 907 7086", "120 SW 8th St", "Miami",	"Florida", "United States", 33130),
(30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "40 Rue du Colisée", "Paris",	"Île-de-France", "France", 75008);

INSERT INTO lab_mysql.sales_person(salepers_id, staff_id, name, store)
VALUES
(0, 00001, "Petey Cruiser", "Madrid"),
(1, 00002, "Anna Sthesia", "Barcelona"),
(2, 00003, "Paul Molive", "Berlin"),
(3, 00004, "Gail Forcewind", "Paris"),
(4, 00005, "Paige Turner", "Miami"),
(5, 00006, "Bob Frapples", "Mexico City"),
(6, 00007, "Walter Melon", "Amsterdam"),
(7, 00008, "Petey Cruiser", "São Paulo");

INSERT INTO lab_mysql.invoices(inv_id, inv_num, date, car_vin, customer_id, staff_id)
VALUES
(0, 852399038, 22-08-2018, 0, 1, 3),
(1, 731166526, 31-12-2018, 3, 0, 5),
(2, 271135104, 22-01-2019, 2, 2, 7);


/* Bonus Challenge - Updating and Deleting Database Records */

/* I already correcter the typo in Miami while copying the data  */

UPDATE lab_mysql.customers
SET email = 'ppicasso@gmail.com'
WHERE customer_name = "Pablo Picasso";

UPDATE lab_mysql.customers
SET email = 'lincoln@us.gov'
WHERE customer_name = "Abraham Lincoln";

UPDATE lab_mysql.customers
SET email = 'hello@napoleon.me'
WHERE customer_name = "Napoléon Bonaparte";


DELETE FROM lab_mysql.cars
WHERE car_id = 4;

