CREATE DATABASE lab_mysql;

CREATE TABLE cars (
vin INT,
manufacturer VARCHAR(52),
model VARCHAR(52),
year INT,
color VARCHAR(52),
PRIMARY KEY (vin));


CREATE TABLE sales_person (
staff_id INT,
name VARCHAR(52),
store VARCHAR(52),
PRIMARY KEY (staff_id));

CREATE TABLE customer (
customer_id INT,
name VARCHAR(52),
phone_number INT,
email VARCHAR(52),
adress VARCHAR(52),
city VARCHAR(52),
state VARCHAR(52),
country VARCHAR(52),
zip_code INT,
PRIMARY KEY (customer_id));

CREATE TABLE invoices (
invoice_number INT,
date DATE,
vin INT,
costumer_id INT,
staff_id INT,
PRIMARY KEY (invoice_number));

/*ALTER TABLE lab_mysql.invoices
ADD FOREIGN KEY (vin)
REFERENCES cars(vin);

ALTER TABLE lab_mysql.invoices
ADD FOREIGN KEY (costumer_id)
REFERENCES customer(customer_id);

ALTER TABLE lab_mysql.invoices
ADD FOREIGN KEY (staff_id)
REFERENCES sales_person(staff_id);*/

/* DROP DATABASE lab_mysql; */

