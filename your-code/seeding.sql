SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

INSERT INTO cars (VIN, Manufacturer, Model, Year, Color) 
VALUES('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue');

INSERT INTO cars (VIN, Manufacturer, Model, Year, Color) 
VALUES ROW('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
ROW('RKXVNNIHLVVZOUB4M', 'Ford	', 'Fusion', '2018', 'White'),
ROW('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver');

INSERT INTO customers (customer_id, customer_name, phone_number, email, address, city, state_province, country, postal_code) 
VALUES('10001', 'Pablo Picasso', '+34636176382', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045');

INSERT INTO salespersons (staff_id, salespersons_name, store) 
VALUES('00001', 'Petey Cruiser', 'Madrid');

INSERT INTO invoices (invoice_number, date, number_of_cars, number_of_customers, number_of_salespersons) 
VALUES('852399038', '22-08-2018	', '0', '1', '3');