SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

insert into lab_mysql.cars (ID, VIN, Manufacturer, Model, Year, Color) values row (0,'3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'), 
row (1,'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter',	2019,	'Red'), 
row (2,'RKXVNNIHLVVZOUB4M', 'Ford',	'Fusion',	2018,	'White'), 
row (3,'HKNDGS7CU31E9Z7JW','Toyota',	'RAV4',	2018,	'Silver' ), 
row (4,'DAM41UDN3CHU2WVF6','Volvo',	'V60',	2019,	'Gray'),
row (5,'DAM41UDN3CHU2WVF6', 'Volvo',	'V60 Cross Country',	2019, 'Gray');

select * from lab_mysql.cars;
SET SQL_SAFE_UPDATES = 0;
delete from lab_mysql.cars where Year is null;
SET SQL_SAFE_UPDATES = 1;

insert into lab_mysql.customers (ID, customer_id,	Name,	Phone_number,	Email,	Address,	City,	State,	Country,	Zip_code) 
values row (0,	10001,	'Pablo Picasso',	'+34 636 17 63 82', '-', 'Paseo de la Chopera, 14',	'Madrid',	'Madrid',	'Spain',	'28045'), 
row (1,	20001,	'Abraham Lincoln',	'+1 305 907 7086',	'-',	'120 SW 8th St',	'Miami',	'Florida',	'United States',	'33130'), 
row (2,	30001,	'Napoléon Bonaparte',	'+33 1 79 75 40 00',	'-',	'40 Rue du Colisée',	'Paris',	'Île-de-France',	'France',	'75008');
select * from lab_mysql.customers;

insert into lab_mysql.salespersons (ID, Staff_id, Name, Store) values row (0,	00001,	'Petey Cruiser',	'Madrid'), 
row (1,	'00002',	'Anna Sthesia',	'Barcelona'), 
row (2,	'00003',	'Paul Molive',	'Berlin'), 
row (3,	'00004',	'Gail Forcewind',	'Paris'), 
row (4,	'00005',	'Paige Turner',	'Mimia'),
row (5,	'00006',	'Bob Frapples',	'Mexico City');

select * from lab_mysql.salespersons;