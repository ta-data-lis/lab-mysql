/* Create a MySQL database for this lab. */
CREATE DATABASE lab_mysql;

/* Now, based on the database design you created, write the SQL query to create the tables and columns.*/
/* Creat Cars Table*/
CREATE TABLE IF NOT EXISTS lab_mysql.cars(
cars_id INT NOT NULL AUTO_INCREMENT,
VIN VARCHAR(100) NOT NULL,
manufacturer VARCHAR(200) NOT NULL, 
model VARCHAR(100) NOT NULL,
year YEAR NOT NULL, 
color VARCHAR(50) NOT NULL,
PRIMARY KEY (cars_id));

/* Creat Customer Table*/
CREATE TABLE IF NOT EXISTS lab_mysql.customer(
ID INT NOT NULL AUTO_INCREMENT,
cus_id INT NOT NULL,
name VARCHAR(200) NOT NULL, 
phone INT NOT NULL,
email VARCHAR(100),
address VARCHAR(500) NOT NULL,
city VARCHAR(200) NOT NULL,
state VARCHAR(200), 
country VARCHAR(200),
ZIP_code VARCHAR(200) NOT NULL,
PRIMARY KEY (ID));

/* Creat Customer_Cars Junction Table to connect customer and cars*/
CREATE TABLE IF NOT EXISTS lab_mysql.customer_cars(
customer_id INT NOT NULL,
cars_id INT NOT NULL,
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY);

/* Creat Salesperson Table*/
CREATE TABLE IF NOT EXISTS lab_mysql.salesperson(
ID INT NOT NULL AUTO_INCREMENT,
staff_id INT NOT NULL,
name VARCHAR(500),
company VARCHAR(500),
 PRIMARY KEY(ID));

/* Create Invoices Table*/
CREATE TABLE IF NOT EXISTS lab_mysql.invoices(
ID INT NOT NULL AUTO_INCREMENT,
invoice_number VARCHAR(500) NOT NULL,
car_id INT NOT NULL,
staff_id INT NOT NULL,
customer_id INT NOT NULL,
invoice_date DATE NOT NULL,
PRIMARY KEY(ID));

/* Create Relationship between Table with the help of Primary and Foreign Key connection*/
/* Update Customer_Cars Table*/
ALTER TABLE lab_mysql.customer_cars
ADD FOREIGN KEY (customer_id) REFERENCES lab_mysql.customer(ID);

ALTER TABLE lab_mysql.customer_cars
ADD FOREIGN KEY (cars_id) REFERENCES lab_mysql.cars(cars_id);

/* Update Invoices Table*/
ALTER TABLE lab_mysql.invoices
ADD FOREIGN KEY (customer_id) REFERENCES lab_mysql.customer(ID);

ALTER TABLE lab_mysql.invoices
ADD FOREIGN KEY (car_id) REFERENCES lab_mysql.cars(cars_id);

ALTER TABLE lab_mysql.invoices
ADD FOREIGN KEY (staff_id) REFERENCES lab_mysql.salesperson(ID);

/* check schema builder for correct relationship*/

/* seeding the databases with dummy data*/

INSERT INTO lab_mysql.cars (cars_id, VIN, manufacturer, model, year, color)
VALUES (0, K096I98581DHSNUP, Volkswagen, Tiguan, 2019, Blue),
(1, ZM8G7BEUQZ97IH46V, Peugeot, Rifter, 2019, Red),
(2, RKXVNNIHLVVZOUB4M, Ford, Fusion, 2018, White),
(3, HKNDGS7CU31E9Z7JW, Toyota, RAV4, 2018, Silver),
(4, DAM41UDN3CHU2WVF6, Volvo, V60, 2019, Gray),
(5, DAM41UDN3CHU2WVF6, Volvo, V60, CrossCountry, 2019, Gray);


INSERT INTO lab_mysql.customer (ID, customer_id, customer.name, phone, email, address, city, state, country, ZIP_code)
VALUES (0, 10001, Pablo Picasso, +34 636 17 63 82, - , Paseo de la Chopera 14, Madrid, Madrid, Spain, 28045),
(1, 20001, Abraham Lincoln, +1 305 907 7086, - , 120 SW 8th St , Miami , Florida , United States , 33130),
(2, 30001, Napoléon Bonaparte, +33 1 79 75 40 00, - , 40 Rue du Colisée, Paris, Île-de-France, France, 75008);



INSERT INTO lab_mysql.salesperson (ID, staff_id, name, company)
VALUES (0, 00001, Petey Cruiser, Madrid),
(1, 00002, Anna Sthesia, Barcelona),
(2, 00003, Paul Molive, Berlin),
(3, 00004, Gail Forcewind, Paris),
(4, 00005, Paige Turner, Mimia),
(5, 00006, Bob Frapples, Mexico Cit),
(6, 00007, Walter Melon, Amsterdam),
(7, 00008, Shonda Leer, São Paulo);


INSERT INTO lab_mysql.invoices (ID, invoice_number, invoice_date, car_id, customer_id, staff_id)
Values (0, 852399038, 22-08-2018, 0, 1, 3),
(1, 731166526, 31-12-2018, 3, 0, 5),
(2, 271135104, 22-01-2019, 2, 2, 7);

/* not sure why it won't let me insert my values. it says syntax error, but I don't find the error...*/

/* Bonus challenge: Now you find an error you need to fix in your existing data - 
in the Salespersons table, you mistakenly spelled *Miami* as *Mimia* for Paige Turner. 
Also, you received the email addresses of the three customers*/

/* To do so we first need to get the ID of the records we want to update and then perform the update query for these specific people*/

/*Update Salesperson Table*/

SELECT salesperson.ID, salesperson.name
FROM lab_mysql.salesperson 
WHERE salesperson.name = Paige Turner; 

UPDATE lab_mysql.salesperson 
SET company = Miami
WHERE condition;

/*Update Customer Table*/

SELECT customer.ID, customer.name
FROM lab_mysql.customer
WHERE customer.name = Pablo Picasso or customer.name = Abraham Lincoln or customer.name = Napoléon Bonaparte;

UPDATE lab_mysql.salesperson 
SET email = ppicasso@gmail.com
WHERE condition;

UPDATE lab_mysql.salesperson 
SET email = lincoln@us.gov
WHERE condition;

UPDATE lab_mysql.salesperson 
SET email = hello@napoleon.me 
WHERE condition;




