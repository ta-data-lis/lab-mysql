-- Challenge 1 & Challenge 2 -- 

/* 1. **Cars** - e.g. the vehicle identification number (VIN), manufacturer, model, year, 
and color of the cars in your company's inventory.

1. **Customers** - e.g. the customer ID, name, phone number, email, address, city, state/province, country, 
and zip/postal code of the customers.

1. **Salespersons** - e.g. staff ID, name, and the store at your company.

1. **Invoices** - e.g. the invoice number, date, car, customer, and salesperson related to each car sale. */


CREATE TABLE IF NOT EXISTS -- creating a table called cars --
Lab3.cars(
id INT AUTO_INCREMENT PRIMARY KEY,
vin VARCHAR(100),
manufacturer VARCHAR(52) NOT NULL,
model VARCHAR(52) NOT NULL,
`year` SMALLINT(52) NOT NULL,
color VARCHAR(30) 
); -- NOT NULL -- it's mandatory to have a value for this value




CREATE TABLE IF NOT EXISTS -- creating a table called customers --
Lab3.customers(
id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
`name` VARCHAR(52) NOT NULL,
phone_number VARCHAR(20) ,
email VARCHAR(75) NOT NULL,
address VARCHAR(300),
city VARCHAR(30) NOT NULL,
state_province VARCHAR(30) NOT NULL,
country VARCHAR(30) NOT NULL,
postal_code VARCHAR(20) NOT NULL
); -- NOT NULL -- it's mandatory to have a value for this value


CREATE TABLE IF NOT EXISTS -- creating a table called customers --
Lab3.salespersons(
id INT AUTO_INCREMENT PRIMARY KEY,
staff_id INT,
`name`VARCHAR(100),
store VARCHAR(52) NOT NULL
); -- NOT NULL -- it's mandatory to have a value for this value

CREATE TABLE IF NOT EXISTS -- creating a table called customers --
Lab3.invoices(
id INT AUTO_INCREMENT PRIMARY KEY,
invoice_number INT,
`date` DATE,
car INT NOT NULL,
customer INT NOT NULL,
salesperson INT NOT NULL,
FOREIGN KEY (car) REFERENCES cars(id),
FOREIGN KEY (customer) REFERENCES customers(id),
FOREIGN KEY (salesperson) REFERENCES salespersons(id)
); -- NOT NULL -- it's mandatory to have a value for this value




