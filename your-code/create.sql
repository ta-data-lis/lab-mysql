
CREATE TABLE IF NOT EXISTS cars (
    id_car INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(255),
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    yearc YEAR,
    color VARCHAR(255));


CREATE TABLE IF NOT EXISTS customers (
    id_customer INT AUTO_INCREMENT PRIMARY KEY,
    c_id INT,
    customer_name VARCHAR(255),
    phone_nr VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(15),
    country VARCHAR(255),
    zip_code VARCHAR(15));
    
    
CREATE TABLE IF NOT EXISTS salespersons (
    id_sp INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT,
    sp_name VARCHAR(255),
    store VARCHAR(255));
    
    
CREATE TABLE IF NOT EXISTS invoices (
	id_invoices INT AUTO_INCREMENT PRIMARY KEY,
    invoice_nr INT,
    i_date DATE,
    car_id INT,
    customer_id INT,
    sp_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(id_car),
    FOREIGN KEY (customer_id) REFERENCES customers(id_customer),
    FOREIGN KEY (sp_id) REFERENCES salespersons(id_sp)
    );
    

    
