USE lab_mysql;

CREATE TABLE IF NOT EXISTS cars (
    vin INT PRIMARY KEY AUTO_INCREMENT,
    manufacturer VARCHAR(25),
    model VARCHAR(50) NOT NULL,
    year_made YEAR,
    colour VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS salespeople (
    id INT PRIMARY KEY AUTO_INCREMENT,
    staffid VARCHAR(25) NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    store VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customerid VARCHAR(25) NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(50),
    email VARCHAR(50) NOT NULL,
    address VARCHAR(75),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    zip VARCHAR(50)
);

CREATE TABLE invoices (
  invoiccustomerse_number VARCHAR(25), 
  invoice_date DATE, 
  invoice_amount FLOAT, 
  staffid VARCHAR(25) NOT NULL,
  customerid VARCHAR(25) NOT NULL,
  vin INT 
);