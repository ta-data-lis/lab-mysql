CREATE TABLE lab_mysql.invoices (invoice_id INT, date DATE,
car VARCHAR(100), customer INT, salesperson INT);
       
CREATE TABLE lab_mysql.salespersons (staff_id INT, name VARCHAR(150),
store VARCHAR(150));

CREATE TABLE lab_mysql.customers (customer_id INT, name VARCHAR(150),
phone VARCHAR(150), email VARCHAR(200), address VARCHAR(500), city VARCHAR(200), 
state_prov VARCHAR(250), country VARCHAR(200), postal_code INT);


CREATE TABLE lab_mysql.cars (VIN VARCHAR(100), manufacturer VARCHAR(250),
model VARCHAR(250), year INT, color VARCHAR(50));