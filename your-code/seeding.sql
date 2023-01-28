SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
SET SQL_SAFE_UPDATES = 1;

INSERT INTO lab_mysql.car(
	car_id,vin, manufacturer, model, year, color) VALUES 
(0,'3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue');
INSERT INTO lab_mysql.car(
	vin, manufacturer, model, year, color) VALUES 
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');


INSERT INTO lab_mysql.customer(	
	customer_id, customer_no, name, phone_number, email,
	address, city, state_or_province, country, postal_code) VALUES
(0, 10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045');
INSERT INTO lab_mysql.customer(	
	customer_no, name, phone_number, email,
	address, city, state_or_province, country, postal_code) VALUES
    (20001, 'Abraham Lincoln', '+1 305 907 7086',  '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');


INSERT INTO lab_mysql.salesperson(
	salesperson_id, staff_id, name, loc_at_store ) VALUES
(0, '00001', 'Petey Cruiser', 'Madrid');
INSERT INTO lab_mysql.salesperson(
	staff_id, name, loc_at_store ) VALUES
('00002', 'Anna Sthesia', 'Barcelona'),
('00003', 'Paul Molive', 'Berlin'),
('00004', 'Gail Forcewind', 'Paris'),
('00005', 'Paige Turner', 'Mimia'),
('00006', 'Bob Frapples', 'Mexico City'),
('00007', 'Walter Melon', 'Amsterdam'),
('00008', 'Shonda Leer', 'São Paulo');


INSERT INTO lab_mysql.invoice(
	invoice_id, invoice_no, date, fkey_car_id, fkey_customer_id, fkey_salesperson_id) VALUES
(0, 852399038, STR_TO_DATE('22-08-2018', '%d-%m-%Y'),0,1,3);
INSERT INTO lab_mysql.invoice(
	invoice_no, date, fkey_car_id, fkey_customer_id, fkey_salesperson_id) VALUES
(731166526, STR_TO_DATE('31-12-2018', '%d-%m-%Y'),3,0,5),
(271135104, STR_TO_DATE('22-01-2019', '%d-%m-%Y'),2,2,7);
