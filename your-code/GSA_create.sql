USE cars_lab_mysql;

CREATE TABLE IF NOT EXISTS 
cars_lab_mysql.cars 
(id INT NOT NULL PRIMARY KEY, VIN VARCHAR(40) NOT NULL, manufacturer VARCHAR(45) NOT NULL, model VARCHAR(45) NOT NULL, year INT NOT NULL, color VARCHAR(45) NOT NULL);

/*DROP TABLE cars_lab_mysql.cars;*/


CREATE TABLE IF NOT EXISTS 
cars_lab_mysql.invoices 
(id INT NOT NULL PRIMARY KEY, invoice_number VARCHAR(40) NOT NULL, date VARCHAR(40) NOT NULL, car_id INT NOT NULL, customer_id INT NOT NULL, salesperson_id INT NOT NULL);

/*DROP TABLE cars_lab_mysql.invoices;*/


CREATE TABLE IF NOT EXISTS 
cars_lab_mysql.customers 
(id INT NOT NULL PRIMARY KEY, customer_id INT NOT NULL, name VARCHAR(45) NOT NULL, phone_number VARCHAR(45) NOT NULL, email VARCHAR(45) NOT NULL, address VARCHAR(45), city VARCHAR(45),
state VARCHAR(45), country VARCHAR(45), zip_code VARCHAR(45));

/*DROP TABLE cars_lab_mysql.customers;*/


CREATE TABLE IF NOT EXISTS 
cars_lab_mysql.salesperson 
(id INT NOT NULL PRIMARY KEY, staff_id INT NOT NULL, name VARCHAR(45) NOT NULL, store VARCHAR(45) NOT NULL);

/*DROP TABLE cars_lab_mysql.salesperson;*/