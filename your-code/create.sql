USE lab_mysql;

 SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

## CARS TABLE ##

CREATE TABLE IF NOT EXISTS
lab_mysql.cars (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
				vin VARCHAR(52),
                manufacturer VARCHAR(20),
                model VARCHAR(20),
                year INT NOT NULL,
                color VARCHAR(12));
                
 DROP TABLE lab_mysql.cars;
 
 ## CUSTOMERS TABLE ##
 
 CREATE TABLE IF NOT EXISTS
lab_mysql.customers (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
				customer_id CHAR (5),
                cust_name VARCHAR(52),
                phone_nr CHAR(12),
                email VARCHAR(52),
                address VARCHAR(52),
                city VARCHAR(20),
                state VARCHAR(20),
                country VARCHAR(52),
                zip VARCHAR(12));
                
DROP TABLE lab_mysql.customers;

 ## INVOICES TABLE ##

CREATE TABLE IF NOT EXISTS
lab_mysql.invoices (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
				invoice_nr CHAR(9),
                inv_date DATE,
                car INT NOT NULL,
                customer INT NOT NULL,
                salesperson INT NOT NULL);
                
DROP TABLE lab_mysql.invoices;


## SALESPERSON TABLE ##

CREATE TABLE IF NOT EXISTS
lab_mysql.salesperson (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
				staff_id CHAR(5),
                staff_name VARCHAR(52),
                store VARCHAR(20));
                
DROP TABLE lab_mysql.salesperson;

-- TESTING

SELECT * FROM lab_mysql.cars;

SELECT * FROM lab_mysql.customers;

SELECT * FROM lab_mysql.invoices;

SELECT * FROM lab_mysql.salesperson;
