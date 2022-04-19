/* LAB 3 - MYSQL ACTIONS
DELIVERABLE 1 - CREATE.SQL */

/* Step 1: create the database and select it*/

CREATE DATABASE lab_mysql;
USE lab_mysql;

/* Step 2: create tables*/

/*note: for the cars table, I would set VIN to UNIQUE,
however we are asked to insert duplicate values to perform the 'delete' bonus script, 
and so for the sake of this exercise I am not setting it as unique*/

CREATE TABLE cars
	(
    id INT PRIMARY KEY AUTO_INCREMENT,
    vin VARCHAR(25),
    manufacturer VARCHAR(25),
    model VARCHAR(50),
    year_car YEAR,
    color VARCHAR(15)
    );

CREATE TABLE customers
	(
    customer_id MEDIUMINT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    phone VARCHAR(15),
    email VARCHAR(30),
    address VARCHAR(100),
    city VARCHAR(20) NOT NULL,
    province VARCHAR(30) NOT NULL,
    country VARCHAR(30) NOT NULL,
    postal_code MEDIUMINT NOT NULL
    );

CREATE TABLE salespersons
	(
    staff_id SMALLINT PRIMARY KEY,
    staff_name VARCHAR(50) NOT NULL,
    store VARCHAR(20) NOT NULL
    );

CREATE TABLE invoices
	(
    invoice_id INT PRIMARY KEY,
    invoice_date DATE,
    car INT,
    customer_id MEDIUMINT,
    staff_id SMALLINT,
    FOREIGN KEY (car)
		REFERENCES cars(id)
        ON DELETE CASCADE,
	FOREIGN KEY (customer_id)
		REFERENCES customers(customer_id)
        ON DELETE CASCADE,
	FOREIGN KEY (staff_id)
		REFERENCES salespersons(staff_id)
        ON DELETE CASCADE
	);


    

