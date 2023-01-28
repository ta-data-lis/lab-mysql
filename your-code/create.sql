USE lab_mysql;

CREATE TABLE car (
	car_id INT PRIMARY KEY AUTO_INCREMENT,
	vin VARCHAR(17) NOT NULL,
	manufacturer VARCHAR(20) NOT NULL,
	model VARCHAR(20) NOT NULL,
	year INT  NOT NULL,
	color VARCHAR(15));
	
CREATE TABLE customer (
	customer_id INT PRIMARY KEY AUTO_INCREMENT, 
	customer_no INT NOT NULL,
	name VARCHAR(50) NOT NULL, 
	phone_number VARCHAR(20), 
	email VARCHAR(60) NOT NULL, 
	address VARCHAR(100) NOT NULL, 
	city VARCHAR(20) NOT NULL, 
	state_or_province VARCHAR(40), 
	country VARCHAR(20) NOT NULL,
	postal_code VARCHAR(5) NOT NULL);
	
CREATE TABLE salesperson (
	salesperson_id INT PRIMARY KEY AUTO_INCREMENT,
	staff_id VARCHAR(5) NOT NULL, 
	name VARCHAR(50) NOT NULL, 
	loc_at_store VARCHAR(20) NOT NULL);

CREATE TABLE invoice (
	invoice_id INT PRIMARY KEY AUTO_INCREMENT,
	invoice_no BIGINT NOT NULL, 
	date DATE NOT NULL, 
	fkey_car_id INT, 
	fkey_customer_id INT, 
	fkey_salesperson_id INT,
	FOREIGN KEY (fkey_car_id) REFERENCES car(car_id),
	FOREIGN KEY (fkey_customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (fkey_salesperson_id) REFERENCES salesperson(salesperson_id)
	);
