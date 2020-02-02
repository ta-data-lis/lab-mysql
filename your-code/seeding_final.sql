CREATE DATABASE IF NOT EXISTS cars_store;

CREATE TABLE IF NOT EXISTS cars
(ID INT PRIMARY KEY AUTO_INCREMENT,
VIN VARCHAR(30) NOT NULL,
manufacturer VARCHAR (30) NOT NULL,
model VARCHAR(30) NOT NULL,
make_year INT,
color VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS customers
(ID INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT NOT NULL,
customer_name CHAR NOT NULL,
phone_number VARCHAR(10),
email VARCHAR(40),
address VARCHAR(80),
city CHAR,
state CHAR,
country CHAR,
post_code INT
);


CREATE TABLE IF NOT EXISTS salespersons
(ID INT PRIMARY KEY AUTO_INCREMENT,
staff_id INT NOT NULL,
store_id INT NOT NULL
);

CREATE TABLE IF NOT EXISTS invoices
(ID INT PRIMARY KEY AUTO_INCREMENT,
invoice_number INT NOT NULL,
date DATE NOT NULl,
car INT NOT NULL,
customer INT NOT NULL,
salesperson INT NOT NULL,
foreign key (car) references cars(ID),
foreign key (customer) references customers(ID),
foreign key (salesperson) references salespersons(ID)
);


