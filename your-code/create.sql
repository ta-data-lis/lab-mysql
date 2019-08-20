DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS customers;

CREATE TABLE IF NOT EXISTS cars (
   car_id INT PRIMARY KEY AUTO_INCREMENT,
  VIN VARCHAR(20),
  manuf VARCHAR(20),
  model VARCHAR(25),
  release_year INT(4),
  color VARCHAR(10)
  );
  
CREATE TABLE IF NOT EXISTS salesperson (
   staff_id INT PRIMARY KEY AUTO_INCREMENT,
  staff_name VARCHAR(25),
  store VARCHAR(20)
  );
  
   
CREATE TABLE IF NOT EXISTS customers (
   customer_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_name VARCHAR(25),
  phone VARCHAR(15) NOT NULL,
  email VARCHAR(25),
  address VARCHAR(30),
  city VARCHAR(25),
  province VARCHAR(25),
  country VARCHAR(15),
  zip VARCHAR(20)
  );
  
CREATE TABLE IF NOT EXISTS invoices (
   invoice_id INT PRIMARY KEY AUTO_INCREMENT,
  invoice_number INT(20), 
  invoice_date date,
  car_id INT,
  customer_id INT,
  staff_id INT,
   FOREIGN KEY (car_id) REFERENCES cars (car_id),
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
  FOREIGN KEY (staff_id) REFERENCES salesperson (staff_id)
  );  
