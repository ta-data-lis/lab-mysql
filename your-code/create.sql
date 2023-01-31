CREATE TABLE IF NOT EXISTS 
labcars.cars (car_id INT PRIMARY KEY,
	          VIN VARCHAR(52), 
	          manufacturer VARCHAR(52), 
	          model VARCHAR(52), 
	          year INT NOT NULL,
	          colour VARCHAR(52));
    
CREATE TABLE IF NOT EXISTS 
labcars.customers (customer_id INT PRIMARY KEY,
	               name VARCHAR(52), 
	               phone INT NOT NULL, 
	               email VARCHAR(52) DEFAULT NULL, 
	               address INT NOT NULL,
	               city VARCHAR(52),
                   state VARCHAR(52),
                   country VARCHAR(52),
                   postal INT NOT NULL);
                   

/* Just realized there is sort of an index/id column 
#missing in each table based on the read.me file */             


DROP TABLE labcars.cars;

DROP TABLE labcars.customers;  

CREATE TABLE IF NOT EXISTS 
labcars.cars (id INT NOT NULL,
              car_id INT PRIMARY KEY,
	          VIN VARCHAR(52), 
	          manufacturer VARCHAR(52), 
	          model VARCHAR(52), 
	          year YEAR,
	          colour VARCHAR(52));
    
CREATE TABLE IF NOT EXISTS 
labcars.customers (id INT NOT NULL,
                   customer_id INT PRIMARY KEY,
	               name VARCHAR(52), 
	               phone INT NOT NULL, 
	               email VARCHAR(52) DEFAULT NULL, 
	               address INT NOT NULL,
	               city VARCHAR(52),
                   state VARCHAR(52),
                   country VARCHAR(52),
                   postal INT NOT NULL);

CREATE TABLE IF NOT EXISTS 
labcars.salespersons (id INT NOT NULL,
                     staff_id INT PRIMARY KEY,
	                 name VARCHAR(52), 
	                 store VARCHAR(52));

CREATE TABLE IF NOT EXISTS 
labcars.invoices (id INT NOT NULL,
                  invoice_number INT PRIMARY KEY,
				  date DATETIME, 
				  car INT NOT NULL,
                  customer INT NOT NULL,
                  sales_person INT NOT NULL);       
    
DROP TABLE labcars.cars;
                  
CREATE TABLE IF NOT EXISTS 
labcars.cars (car_id INT PRIMARY KEY,
	          VIN VARCHAR(52), 
	          manufacturer VARCHAR(52), 
	          model VARCHAR(52), 
	          year YEAR,
	          colour VARCHAR(52));

DROP TABLE labcars.customers; 
              
CREATE TABLE IF NOT EXISTS 
labcars.customers (id INT NOT NULL,
                   customer_id INT PRIMARY KEY,
	               name VARCHAR(52), 
	               phone VARCHAR(52), 
	               email VARCHAR(52) DEFAULT NULL, 
	               address VARCHAR(52),
	               city VARCHAR(52),
                   state VARCHAR(52),
                   country VARCHAR(52),
                   postal INT NOT NULL);
                   
DROP TABLE labcars.invoices;

CREATE TABLE IF NOT EXISTS 
labcars.invoices (id INT NOT NULL,
                  invoice_number INT PRIMARY KEY,
				  date DATE, 
				  car INT NOT NULL,
                  customer INT NOT NULL,
                  sales_person INT NOT NULL);