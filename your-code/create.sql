CREATE DATABASE mysql_actions;

/*CAR TABLE*/
CREATE TABLE IF NOT EXISTS
mysql_actions.cars(
car_id INT PRIMARY KEY auto_increment,
vin VARCHAR(50),
manufacturer VARCHAR(50),
model VARCHAR(50),
c_year INT,
color VARCHAR(50));

/*CUSTOMERS TABLE*/
CREATE TABLE IF NOT EXISTS
mysql_actions.customer(
c_id INT PRIMARY KEY auto_increment,
customer_id INT,
customer_name VARCHAR(50),
phone INT,
email VARCHAR(50),
address VARCHAR(50),
city VARCHAR(50),
state VARCHAR(50),
country VARCHAR(50),
zip VARCHAR(50));

/*SALES PERSON TABLE*/
CREATE TABLE IF NOT EXISTS
mysql_actions.salesperson(
s_id INT PRIMARY KEY auto_increment,
staff_id INT,
staff_name VARCHAR(50),
store VARCHAR(50));

/*INVOICES TABLE*/
CREATE TABLE IF NOT EXISTS
mysql_actions.invoices(
i_id INT PRIMARY KEY auto_increment,
invoice_id INT,
invoice_date DATE,
vehicle_id INT,
customer_id INT, 
staff_id INT,
FOREIGN KEY (vehicle_id) REFERENCES cars(car_id),
FOREIGN KEY (customer_id) REFERENCES customer(c_id),
FOREIGN KEY (staff_id) REFERENCES salesperson(s_id));




