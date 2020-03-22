-- LAB SQL -- 


CREATE TABLE
cars(
ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
VIN VARCHAR(20) NOT NULL,
brand VARCHAR(20),
car_year YEAR,
color VARCHAR(20),
model VARCHAR(20),
sold BINARY
);


CREATE TABLE
costumers(
ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
costumer_id NUMERIC,
first_name VARCHAR(20),
last_name VARCHAR(20),
mobile VARCHAR(20),
email VARCHAR(20),
address VARCHAR(50),
city VARCHAR(20),
state VARCHAR(20),
country VARCHAR(20),
zip_code VARCHAR(20),
amount_spent NUMERIC,
client_since DATE,
SSN VARCHAR(11)
);

CREATE TABLE
salesperson(
ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
staff_id INT,
first_name VARCHAR(20),
last_name VARCHAR(20),
store VARCHAR(20)
);

CREATE TABLE
invoices(
ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
invoice_number NUMERIC,
date_invoice DATE,
car_id INT, foreign key(car_id) REFERENCES cars(ID),
costumer_id INT, foreign key(costumer_id) REFERENCES costumers(ID),
salesperson VARCHAR(20) 
);