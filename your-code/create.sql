USE lab_mysql;

CREATE TABLE cars (VIN VARCHAR(20), manufacturer VARCHAR(20),
       model VARCHAR(20), year INT1 , color VARCHAR(20));
       
CREATE TABLE customers (customer_ID INT8, name VARCHAR(20), phone_number INT8, email VARCHAR(20), 
address VARCHAR(20), city VARCHAR(20), state VARCHAR(20), country VARCHAR(20), zip VARCHAR(20));

CREATE TABLE salesperson (staff_ID INT8, name VARCHAR(20), store VARCHAR(20));

CREATE TABLE invoices (invoice_nr INT8, date DATE, VIN VARCHAR(20),  customer_ID INT8, staff_ID INT8);


