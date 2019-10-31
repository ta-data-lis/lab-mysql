CREATE TABLE IF NOT EXISTS cars (
    id INT PRIMARY KEY AUTO_INCREMENT,
    vin VARCHAR(25),
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

INSERT INTO cars (vin, manufacturer, model, year_made, colour)
VALUES
('K096I98581DHSNUP',	'Volkswagen',	'Tiguan',	'2019',	'Blue'),
('ZM8G7BEUQZ97IH46V',	'Peugeot',	'Rifter',	'2019',	'Red'),
('RKXVNNIHLVVZOUB4M',	'Ford',	'Fusion',	'2018',	'White'),
('HKNDGS7CU31E9Z7JW',	'Toyota',	'RAV4',	'2018',	'Silver'),
('DAM41UDN3CHU2WVF6',	'Volvo',	'V60',	'2019',	'Gray'),
('DAM41UDN3CHU2WVF6',	'Volvo',	'V60 Cross Country','2019',	'Gray');

INSERT INTO customers (customerid, first_name, last_name, phone, email, address, city, state, country, zip)
VALUES 
('10001', 'Pablo', 'Picasso', '+34 636 17 63 82', 'pablo@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'), 
('20001', 'Abraham', 'Lincoln', '+1 305 907 7086', 'pablo@gmail.com', '120 SW 8th St', 'Miama', 'Florida', 'United States', '33130'),
('20001', 'Napoleon', 'Bonaparte', '+33 1 79 75 40 00', 'napo@gmail.com', '140 Rue du Colisée', 'Paris', 'Ile-de-France', 'France', '75008');


INSERT INTO salespeople (staffid, first_name, last_name, store)
VALUES 
('00001','Petey','Cruiser','Madrid'),
('00002','Anna','Sthesia','Barcelona'),
('00003','Paul','Molive','Berlin'),
('00004','Gail','Forcewind','Paris'),
('00005','Paige','Turner','Mimia'),
('00006','Bob','Frapples','Mexico City'),
('00007','Walter','Melon','Amsterdam'),
('00008','Shonda','Leer','São Paulo');
