
USE lab_mysql;

CREATE TABLE cars (car_id INT, primary key(car_id), car_model VARCHAR(20) , car_color VARCHAR(20), car_year INT(4), car_vim VARCHAR(20) UNIQUE);
CREATE TABLE customers (cust_id INT, primary key(cust_id), `name` VARCHAR(20) , phone_number VARCHAR(13), email VARCHAR(30), city VARCHAR(30), state VARCHAR(30), country VARCHAR(30), postal_CODE VARCHAR(15));
CREATE TABLE salespersons (staff_id INT, primary key(staff_id), staff_name VARCHAR(20) , store_name VARCHAR(20));
CREATE TABLE invoices (invoice_id INT, primary key(invoice_id), invoice_date date, car_id INT, cust_id INT, staff_id INT,
FOREIGN KEY (car_id) REFERENCES cars (car_id), 
FOREIGN KEY (cust_id) REFERENCES customers (cust_id), 
FOREIGN KEY (staff_id) REFERENCES salespersons (staff_id)
);

