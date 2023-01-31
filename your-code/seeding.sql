Set sql_mode = "NO_AUTO_VALUE_ON_ZERO";
insert into cars_new (ID, VIN, Manufacturer, Model, Year, Color)
values ( 0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue');
insert into cars_new (ID, VIN, Manufacturer, Model, Year, Color)
values ( 1, 'ZM8G7BEUQZ97IH46V', 'Peugeot','Rifter', 2019, 'Red');
insert into cars_new (ID, VIN, Manufacturer, Model, Year, Color)
values ( 2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White');
insert into cars_new (ID, VIN, Manufacturer, Model, Year, Color)
values ( 3, 'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018, 'Silver');
insert into cars_new (ID, VIN, Manufacturer, Model, Year, Color)
values ( 4,  'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');
insert into cars_new (ID, VIN, Manufacturer, Model, Year, Color)
values ( 5,'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

insert into customers ( ID, Customer_id, Name, Phone_number, Email, Address, City, State_Province, Country, Zip_postal_code)
values (0, 10001, 'Pablo Picasso', '+34 636 17 63 82', '', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045);
insert into customers ( ID, Customer_id, Name, Phone_number, Email, Address, City, State_Province, Country, Zip_postal_code)
values (1, 20001, 'Abraham Lincoln', '+1 305 907 7086', '', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130);
insert into customers ( ID, Customer_id, Name, Phone_number, Email, Address, City, State_Province, Country, Zip_postal_code)
values (2, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

insert into salespersons ( ID, Staff_id, Name, Store)
values (0, 00001, 'Petey Cruiser', 'Madrid');
insert into salespersons ( ID, Staff_id, Name, Store)
values (1, 00002, 'Anna Sthesia', 'Barcelona');
insert into salespersons ( ID, Staff_id, Name, Store)
values(2, 00003, 'Paul Molive', 'Berlin');
insert into salespersons ( ID, Staff_id, Name, Store)
values(3, 00004, 'Gail Forcewind', 'Paris');
insert into salespersons ( ID, Staff_id, Name, Store)
values(4, 00005, 'Paige Turner', 'Mimia');
insert into salespersons ( ID, Staff_id, Name, Store)
values(5, 00006, 'Bob Frapples', 'Mexico City');
insert into salespersons ( ID, Staff_id, Name, Store)
values(6, 00007, 'Walter Melon', 'Amsterdam');
insert into salespersons ( ID, Staff_id, Name, Store)
values(7, 00008, 'Shonda Leer', 'São Paulo');

insert into invoices (ID, invoice_number, Date, Cars_ID, Costumers_ID, Staff_ID)
values(0, 852399038, STR_TO_DATE('22-08-2018', '%d-%m-%Y'),  0, 1, 3);
insert into invoices (ID, invoice_number, Date, Cars_ID, Costumers_ID, Staff_ID)
values(1, 731166526, STR_TO_DATE('31-12-2018', '%d-%m-%Y'), 3, 0, 5);
insert into invoices (ID, invoice_number, Date, Cars_ID, Costumers_ID, Staff_ID)
values(2, 271135104, STR_TO_DATE('22-01-2019', '%d-%m-%Y'), 2, 2, 7);

