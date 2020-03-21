SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

DESCRIBE customers;
INSERT INTO customers (Customer_ID, Customer_Name, Phone_number, Email, Address, city, State_province, Country, Post_zip_code)
VALUES 
	('1234', 'Paola Pelaez', '+351 912975113', 'myemail@gmail.com', 'Rua Gonçalves Crespo, 2', 'Lisbon', 'Lisbon', 'Portugal', '1900424'),
    ('1235', 'Martin Lincoln', '+1 3059077086', 'martinl@hotmail.com', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130')
;
SELECT * FROM customers;

DESCRIBE cars;
INSERT INTO cars (VIN, Manufacturer, Model, Year, Color)
VALUES
	('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),
    ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red')
;
SELECT * FROM cars;

DESCRIBE salespeople;
INSERT INTO salespeople (Staff_ID, Staff_Name, Store)
VALUES
	('00001', 'Petey Cruiser', 'Madrid'),
    ('00002', 'Anna Sthesia', 'Barcelona'),
    ('00003', 'Ana Oliveira', 'Lisbon')
 ;   
 
SELECT * FROM salespeople;

DESCRIBE invoices;
INSERT INTO invoices(Invoice_number, Invoice_date, Car, Customer, Sales_person, Price)
VALUES
	('852399038', '2018-08-22', '0', '1', '3', '15000'),
    ('731166526', '2018-12-31', '3', '0', '5', '25000')
;

SELECT * FROM invoices;

INSERT INTO stores(store_id, store_name, store_address, city, state, zip)
VALUES
	('12345', 'Miami', 'adress 123', 'Miami', 'FL', '1000'),
    ('12346', 'Lisbon', 'rua exemplo 12', 'Lisbon', 'LS', '1900')
;

SELECT * FROM stores;



