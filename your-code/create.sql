USE lab_mysql;

CREATE TABLE IF NOT EXISTS cars ( 
id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,  
VIN VARCHAR(20), 
manufacturer VARCHAR(20) NOT NULL,  
model VARCHAR(20) NOT NULL, 
year INT NOT NULL,
color VARCHAR(15));

CREATE TABLE IF NOT EXISTS invoices ( 
id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,  
invoiceNumber INT NOT NULL,  
date DATE NOT NULL,
car_VIN INT NOT NULL, 
customer_ID INT NOT NULL,
salesperson_staffID INT NOT NULL
);

-- I would have loved city, state_province and country to be ENUM
CREATE TABLE IF NOT EXISTS customers (
id INT AUTO_INCREMENT PRIMARY KEY NOT NULL, 
customerID INT NOT NULL,
name VARCHAR(40) NOT NULL, 
phone_number INT,
email VARCHAR(20),
address VARCHAR(40),
city VARCHAR(20),
state_province  VARCHAR(20),
country VARCHAR(20),
zip_postalcode INT
);

CREATE TABLE IF NOT EXISTS salespersons(
id INT AUTO_INCREMENT PRIMARY KEY NOT NULL, 
staffID INT NOT NULL,
name VARCHAR(40) NOT NULL,
store VARCHAR(20) NOT NULL
);

