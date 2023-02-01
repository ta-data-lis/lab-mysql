## Challenge 1 - Design the Database
CREATE DATABASE lab3; /*refresh schemas after running this line*/

/* How to create a table */
CREATE TABLE IF NOT EXISTS
lab3.cars (cars_id INT NOT NULL PRIMARY KEY,
		vin VARCHAR(52),
		manufacturer VARCHAR(52),
        model VARCHAR(52),
        year INT,
        color VARCHAR(52));

DROP TABLE lab3.cars, lab3.carss, lab3.customer, lab3.invoices, lab3.salesperson;
        
CREATE TABLE IF NOT EXISTS
lab3.customer ( customer_id INT NOT NULL PRIMARY KEY,
		customer INT,
		name VARCHAR(52),
        phone_number VARCHAR(52),
        email VARCHAR(52),
        address VARCHAR(52),
        city VARCHAR(52),
        state VARCHAR(52),
        country VARCHAR(52),
        postal_code VARCHAR(52));

CREATE TABLE IF NOT EXISTS
lab3.salesperson(salesperson_id INT NOT NULL PRIMARY KEY,
				staff_id VARCHAR(52),
				salesp_name VARCHAR(52),
				store VARCHAR(52));
                
DROP TABLE lab3.customer, lab3.invoices;
                
CREATE TABLE IF NOT EXISTS
lab3.invoices (invoice_id INT NOT NULL PRIMARY KEY,
			invoice_number INT,
			dates Date,
            vin INT NOT NULL,
            customer_id INT NOT NULL,
            salesper_id INT NOT NULL,
            FOREIGN KEY (vin) REFERENCES cars(cars_id),
            FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
            FOREIGN KEY (salesper_id) REFERENCES salesperson(salesperson_id)); 