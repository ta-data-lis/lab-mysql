USE lab_mysql;

CREATE TABLE IF NOT EXISTS cars ( car_id INT PRIMARY KEY AUTO_INCREMENT, vin VARCHAR(60), manufacturer VARCHAR(60), model VARCHAR(60), _year INT, color VARCHAR(60));

CREATE TABLE IF NOT EXISTS customers ( cu_id INT PRIMARY KEY AUTO_INCREMENT, custumer_id INT, cu_name VARCHAR(60), cu_phone INT, cu_email VARCHAR(60), cu_adress VARCHAR(60), cu_city VARCHAR(60), cu_state_prov VARCHAR(60), cu_country VARCHAR(60), cu_zip VARCHAR(60));

CREATE TABLE IF NOT EXISTS salesperson (sa_id INT PRIMARY KEY AUTO_INCREMENT, staff_id INT, sa_name VARCHAR(60), sa_store VARCHAR(60));

CREATE TABLE IF NOT EXISTS invoices ( inv_id INT PRIMARY KEY AUTO_INCREMENT, inv_numb INT, inv_date DATETIME, car_id INT , cu_id INT, sa_id INT,
CONSTRAINT fk_car FOREIGN KEY (car_id) REFERENCES cars(car_id),
CONSTRAINT fk_customers FOREIGN KEY (cu_id) REFERENCES customers(cu_id),
CONSTRAINT fk_salesperson FOREIGN KEY (sa_id) REFERENCES salesperson(sa_id));

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

ALTER TABLE cars AUTO_INCREMENT = 1;

INSERT INTO cars (car_id, vin, manufacturer, model, _year, color)
VALUES ('0','3K096I98581DHSNUP','Volkswagen','Tiguan','2019','Blue'),
('1','ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
('2','RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
('3','HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),
('4','DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
('5','DAM41UDN3CHU2WVF6', 'Volvo', 'V60 CROSS Country', '2019', 'Gray');

INSERT INTO customers (cu_id, custumer_id, cu_name, cu_phone, cu_email, cu_adress, cu_city, cu_state_prov, cu_country, cu_zip)
VALUES ('0','10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '2845'),
('1', '20001', 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('2','30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');


INSERT INTO salesperson(sa_id, staff_id, sa_name, sa_store)
VALUES ('0', '00001', 'Petey Cruiser', 'Madrid'),
('1','00002', 'Anna Sthesia', 'Barcelona'),
('2','00003', 'Paul Molive', 'Berlin'),
('3','00004', 'Gail Forcewind', 'Paris'),
('4','00005', 'Paige Turner', 'Mimia'),
('5','00006', 'Bob Frapples', 'Mexico City'),
('6','00007', 'Walter Melon', 'Amsterdam'),
('7','00008', 'Shonda Leer', 'São Paulo');


INSERT INTO invoices(inv_id,inv_numb, inv_date, car_id, cu_id, sa_id)
VALUES ('0','852399038', '2018-08-22', '0', '1', '3'),
('1','731166526', '2018-12-31', '3', '0', '5'),
('2','271135104', '2019-01-22', '2', '2', '7');

