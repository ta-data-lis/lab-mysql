USE lab_mysql;

SHOW TABLES

DROP TABLE cars;

CREATE TABLE cars (car_ID VARCHAR(20), manufacturer VARCHAR(20),
       model VARCHAR(20), year INT, color VARCHAR(20),
       PRIMARY KEY (model));

DROP TABLE customers

CREATE TABLE customers (customer_ID INT, name VARCHAR(200),
       phone VARCHAR(20), email VARCHAR(20), adress VARCHAR(200),
       city VARCHAR(200), state VARCHAR(200), country VARCHAR(200), zip_code INT,
       PRIMARY KEY (customer_ID));
    
DROP TABLE sales_person

CREATE TABLE sales_person (seller_id INT, name VARCHAR(20),store VARCHAR(20),
						   PRIMARY KEY (seller_id));

CREATE TABLE invoice (invoice_number INT, date DATE,car_ID VARCHAR(20),customer_ID INT,seller_id INT);