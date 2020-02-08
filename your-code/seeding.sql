INSERT INTO cars (VIN, manufacturer, model, year, colour) 
    VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'), 
    ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019' , 'Red'), 
    ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018' , 'White'),
    ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018' , 'Silver'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019' , 'Gray'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Country', '2019', 'Gray');
    
INSERT INTO customers (Customer_ID , Name , Phone , Email , Address , City , State_Province , Country , Postal) 
    VALUES ('10001' , 'Pablo Picasso', '636 17 63 82' , '-' , 'Paseo de la Chopera, 14' , 'Madrid' , 'Madrid', 'Spain' , '28045'), 
    ('20001', 'Abraham Lincoln', '+1 305 7086', '-' , '120 SW 8th St', 'Miami' , 'Florida' , 'United States', '33130'), 
    ('30001', 'Napoléon Bonaparte', '+33 1 75 40 00' , '-' , '40 Rue du Colisée' , 'Paris' , 'Île-de-France', 'France', '75008' );
    
INSERT INTO sales_persons (Staff_ID, Name, Store) 
    VALUES ('00001', 'Petey Cruiser' , 'Madrid'),
    ('00002', 'Anna Sthesia', 'Barcelona'), 
	('00003', 'Paul Molive', 'Berlin'),
	('00004', 'Gail Forcewind', 'Paris'),
	('00005', 'Paige Turner', 'Madrid');
	
INSERT INTO invoices (invoice_number, date, car_id, id_cust,id_salesper) 
    VALUES ('852399038', '2018-08-22', 2 , 1 , 3),
	('731166526', '2018-12-31', 3 , 3 , 5),
	('271135104', '2019-01-25', 2 , 2 , 2);