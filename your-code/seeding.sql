INSERT INTO lab_actions.cars (ID, VIN, Manufacturer, Model, Year, Colour)
Values ( '0', '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),
('1', 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'), 
('2', 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
('3', 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),
('4', 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
('5', 'DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', '2019','Gray');

INSERT INTO lab_actions.customers (ID, CustomerID, Name, Phone_Number, Email, Adress, City, State_Province, Country, ZipCode)
Values ( '0', '10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('1', '20001', 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('2', '30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Ile-de-France', 'France', '75008');

INSERT INTO lab_actions.salespeople (ID, StaffID, Staff_Name, Store)
Values ( '0', '0001', 'Petey Cruiser', 'Madrid'),
( '1', '0002', 'Anna Sthesia', 'Barcelona'),
( '2', '0003', 'Paul Molive', 'Berlin'),
( '3', '0004', 'Gail Forcewind', 'Paris'),
( '4', '0005', 'Paige Turner', 'Miami'),
( '5', '0006', 'Bob Frapples', 'Mexico City'),
( '6', '0007', 'Walter Melon', 'Amsterdam'),
( '7', '0008', 'Shonda Leer', 'São Paulo');

INSERT INTO lab_actions.invoices (ID, Inv_num, Date, VIN, CustomerID, StaffID)
Values ( '0', '852399038', '2018-08-22', '3K096I98581DHSNUP', '20001', '0004'),
( '1', '731166526 ', '2018-12-31', 'HKNDGS7CU31E9Z7JW', '10001', '0006'),
( '2', '271135104 ', '2019-01-22', 'RKXVNNIHLVVZOUB4M', '20001', '0008');


