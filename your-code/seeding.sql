-- Let's indicate what is the database to be used
USE lab_mysql;

-- Let's seed the table Cars
INSERT INTO Cars (ID, VIN, Manufacturer, Model, Year, Color) VALUES (0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan',2019,'Blue');
INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color) VALUES ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter',2019,'Red');
INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color) VALUES ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion',2018,'White');
INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color) VALUES ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4',2018,'Silver');
INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color) VALUES ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60',2019,'Gray');
INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color) VALUES ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country',2019,'Gray');

-- Let's seed the table Customers
INSERT INTO Customers (ID, `Customer ID`, Name, Phone, Address, City, `State/Province`, Country, Postal) VALUES (0, 10001, 'Pablo Picasso', '+34 636 17 63 82','Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045);
INSERT INTO Customers (`Customer ID`, Name, Phone, Address, City, `State/Province`, Country, Postal) VALUES (20001, 'Abraham Lincoln', '+1 305 907 7086','120 SW 8th St', 'Miami', 'Florida', 'United States', 33130);
INSERT INTO Customers (`Customer ID`, Name, Phone, Address, City, `State/Province`, Country, Postal) VALUES (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00','40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

-- Let's seed the table Salespersons
INSERT INTO Salespersons (ID, `Staff ID`, Name, Store) VALUES (0, '00001', 'Petey Cruiser', 'Madrid');
INSERT INTO Salespersons (`Staff ID`, Name, Store) VALUES ('00002', 'Anna Sthesia', 'Barcelona');
INSERT INTO Salespersons (`Staff ID`, Name, Store) VALUES ('00003', 'Paul Molive', 'Berlin');
INSERT INTO Salespersons (`Staff ID`, Name, Store) VALUES ('00004', 'Gail Forcewind', 'Paris');
INSERT INTO Salespersons (`Staff ID`, Name, Store) VALUES ('00005', 'Paige Turner', 'Mimia');
INSERT INTO Salespersons (`Staff ID`, Name, Store) VALUES ('00006', 'Bob Frapples', 'Mexico City');
INSERT INTO Salespersons (`Staff ID`, Name, Store) VALUES ('00007', 'Walter Melon', 'Amsterdam');
INSERT INTO Salespersons (`Staff ID`, Name, Store) VALUES ('00008', 'Shonda Leer', 'São Paulo');

-- Let's seed the table Invoices
INSERT INTO Invoices (ID, `Invoice Number`, Date, Car, Customer, `Sales Person`) VALUES (0, 852399038, '2018-08-22', 0, 1, 3);
INSERT INTO Invoices (`Invoice Number`, Date, Car, Customer, `Sales Person`) VALUES (731166526, '2018-12-31', 3, 0, 5);
INSERT INTO Invoices (`Invoice Number`, Date, Car, Customer, `Sales Person`) VALUES (271135104, '2019-01-22', 2, 2, 7);