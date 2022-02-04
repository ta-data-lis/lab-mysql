
CREATE SCHEMA IF NOT EXISTS `dealership`; 

USE `dealership`;

CREATE TABLE IF NOT EXISTS Cars (
    cars_id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cars_vin VARCHAR(30) NOT NULL,
    manufact VARCHAR(20),
    model VARCHAR(20),
    car_year SMALLINT,
    color VARCHAR(20));
   
CREATE TABLE IF NOT EXISTS Customer (
    customer_auto SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id  SMALLINT NOT NULL,
    customer_name VARCHAR(60) NOT NULL,
    phone_num VARCHAR(20) NOT NULL,
    email VARCHAR(30),
	address VARCHAR(60),
    city VARCHAR(30),
    state_prov VARCHAR(30),
    country VARCHAR(20),
    zip_postalCode INT);
  
  CREATE TABLE IF NOT EXISTS Salesperson (
    sales_id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    staff_id SMALLINT NOT NULL,
    staff_name VARCHAR(60) NOT NULL,
    store VARCHAR(30));
    
    CREATE TABLE IF NOT EXISTS Invoices (
    invoice_id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT NOT NULL,
    invoice_date VARCHAR(20) NOT NULL,
    cars_id SMALLINT,
    FOREIGN KEY (cars_id) REFERENCES Cars(cars_id),
    customer_auto SMALLINT,
    FOREIGN KEY (customer_auto) REFERENCES Customer(customer_auto),
	sales_id SMALLINT,
    FOREIGN KEY (sales_id) REFERENCES Salesperson(sales_id));
    
 







    