CREATE DATABASE lab_mysql;
USE lab_mysql;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE IF NOT EXISTS 
lab_mysql.cars(
car_id TINYINT AUTO_INCREMENT PRIMARY KEY, 
vin VARCHAR(17), 
mfr VARCHAR(16),
model VARCHAR(9), 
year_ YEAR,
color VARCHAR(8)
);


INSERT INTO lab_mysql.cars(car_id, vin, mfr, model, year_, color)
VALUES (0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
(1, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
(2, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
(3, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"), 
(4, "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
(5, "DAM41UDN3CHU2WVF6", "Volvo", "V60_cross_country", 2019, "Gray");

CREATE TABLE IF NOT EXISTS 
lab_mysql.customers(
id TINYINT AUTO_INCREMENT PRIMARY KEY,
cus_id SMALLINT,
name_ VARCHAR(34), 
phone VARCHAR(20),
email VARCHAR(52) DEFAULT "johndoe@gmail.com", 
address VARCHAR(30),
city VARCHAR (8),
state VARCHAR(15),
country VARCHAR(15),
zip_cd VARCHAR(5)
);

INSERT INTO lab_mysql.customers(id, cus_id, name_, phone, email, address, city, state, country, zip_cd)
VALUES (0, "10001", "Pablo Picasso", "+34 636 17 63 82", "-", "Paseo de la Chopera 14", "Madrid", "Madrid", "Spain", "28045"),
(1, "20001", "Abraham Lincoln", "+1 305 907 7086", "-", "120 SW 8th St", "Miami", "Florida", "United States", "33130"),
(2, "30001", "Napoléon_Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008");

CREATE TABLE IF NOT EXISTS 
lab_mysql.city(
city_id TINYINT AUTO_INCREMENT PRIMARY KEY,
`city` VARCHAR(15), 
country_id TINYINT
);


CREATE TABLE IF NOT EXISTS 
lab_mysql.country(
country_id TINYINT AUTO_INCREMENT PRIMARY KEY,
`country` VARCHAR(15), 
city_id TINYINT
);

CREATE TABLE IF NOT EXISTS 
lab_mysql.salespersons(
id TINYINT AUTO_INCREMENT PRIMARY KEY,
staff_id SMALLINT, 
name_staff VARCHAR(17), 
city VARCHAR(15)
);

INSERT INTO lab_mysql.salespersons(id, staff_id, name_staff, city)
VALUES(0, "00001", "Petey Cruiser", "Madrid"),
(1, "00002", "Anna Sthesia", "Barcelona"),
(2, "00003", "Paul Molive", "Berlin"),
(3, "00004", "Gail Forcewind", "Paris"),
(4, "00005", "Paige Turner", "Mimia"),
(5, "00006", "Bob Frapples", "Mexico City"),
(6, "00007", "Walter Melon", "Amsterdam"),
(7, "00008", "Shonda Leer", "São Paulo" );


CREATE TABLE IF NOT EXISTS 
lab_mysql.invoices(
id TINYINT AUTO_INCREMENT PRIMARY KEY,
inv_id VARCHAR(9), 
date_ VARCHAR(10), 
car_id TINYINT,
cus_id SMALLINT, 
staff_id SMALLINT
);

DROP TABLE lab_mysql.invoices;
INSERT INTO lab_mysql.invoices(id, inv_id, date_, car_id, cus_id, staff_id)
VALUES(0, 852399038, "22-08-2018", "0 ", "20001", "00006"),
(1, 731166526, "31-12-2018", "3", "10001", "00006"),
(2, 271135104, "22-01-2019", "2", "30001", "00008");