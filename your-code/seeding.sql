INSERT INTO car (VIN_id, manufacturer, model, years, color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V' , 'Peugeot' , 'Rifter', 2019 ,'Red'),
('RKXVNNIHLVVZOUB4M' , 'Ford' , 'Fusion' , 2018 , 'White'),
( 'HKNDGS7CU31E9Z7JW' , 'Toyota', 'RAV4' , 2018 , 'Silver'),
('DAM41UDN3CHU2WVF6' , 'Volvo', 'V60' , 2019 , 'Gray');

INSERT INTO customers (Customer_id, name_ , phone_number, email, address, city, state_province, country, zip_code)
VALUES (10001, 'Pablo Picasso', 0034636176382 , '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
(20001, 'Abraham Lincoln', 0013059077086, '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(30001, 'Napoléon Bonaparte', 0033179754000, '-', '40 Rue du Colisée ', ' Paris', 'Île-de-France', 'France', 75008);

INSERT INTO salesperson (staff_id, name_ , store)
VALUES (00001, 'Petey Cruiser', 'Madrid'),
(00002, 'Anna Sthesia', 'Barcelona'),
(00003, 'Gail Forcewind', 'Paris'),
(00004, 'Paige Turner', 'Miami'),
(00005, 'Bob Frapples', 'Mexico City'),
(00006, ' Walter Melon', 'Amsterdam'),
(00007, 'Shonda Leer', 'São Paulo ');

INSERT INTO invoices (invoice_id, date_ , car, customer, salesperson)
VALUES (852399038, '22-08-2018', 0, 1, 3),
( 731166526, '31-12-2018', 3, 0, 5),
( 271135104 , '22-01-2019', 2, 2, 7);