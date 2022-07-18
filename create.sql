CREATE TABLE IF NOT EXISTS
lab_mysql.cars(
vin VARCHAR(200) PRIMARY KEY,
manufacturer VARCHAR(100),
model VARCHAR (100),
year SMALLINT,
color VARCHAR(200)); 


CREATE TABLE IF NOT EXISTS
lab_mysql.salespersons(staff_id SMALLINT PRIMARY KEY,
name VARCHAR(100), 
store VARCHAR(100));

CREATE TABLE IF NOT EXISTS
lab_mysql.customers(customer_id SMALLINT PRIMARY KEY,
name VARCHAR(100), 
phone_number TINYINT, 
email VARCHAR (100), 
address VARCHAR (200),
city VARCHAR (100),
state VARCHAR (100),
country VARCHAR (100),
zip_code VARCHAR (100));

CREATE TABLE IF NOT EXISTS
lab_mysql.invoices(invoice_id SMALLINT PRIMARY KEY, 
date_sold DATE,
vin VARCHAR(200),
customer_id SMALLINT,
staff_id SMALLINT,
FOREIGN KEY (vin) REFERENCES cars(vin), 
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id));





