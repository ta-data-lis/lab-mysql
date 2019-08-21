create database car_dealership;

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
    color VARCHAR(15));

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
   

INSERT INTO cars (VIN,manuf,model,release_year,color) VALUES
('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');

INSERT INTO salesperson (staff_name, store) VALUES
('Petey Cruiser','Madrid'),
('Anna Sthesia','Barcelona'),
('Paul Molive','Berlin'),
('Gail Forcewind','Paris'),
('Paige Turner','Miami'),
('Bob Frapples','Mexico City'),
('Walter Melon','Amsterdam'),
('Shonda Leer','São Paulo');

INSERT INTO customers (customer_name, phone, email, address, city, province, country, zip) VALUES
('Pablo Picasso','+34636176382',NULL,'Paseo de la Chopera 14','Madrid','Madrid','Spain','28045'),
('Abraham Lincoln','+13059077086',NULL,'120 SW 8th St','Miami','Florida','United States','33130'),
('Napoléon Bonaparte','+33179754000',NULL,'40 Rue du Colisée','Paris','Île-de-France','France','75008');

INSERT INTO invoices (invoice_number, invoice_date, car_id, customer_id, staff_id) VALUES
(852399038,'2018-08-22',1,1,3),
(731166526,'2018-12-31',3,1,5), 
(271135104,'2019-01-22',2,2,7);
