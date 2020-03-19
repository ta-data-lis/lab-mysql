insert into cars(VIN, manufacturer, model, year, color)
values('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue');

insert into cars(VIN, manufacturer, model, year, color)
values('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red');

insert into cars(VIN, manufacturer, model, year, color)
values('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White');

insert into cars(VIN, manufacturer, model, year, color)
values('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver');

insert into cars(VIN, manufacturer, model, year, color)
values('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray');

insert into cars(VIN, manufacturer, model, year, color)
values('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country	', '2019', 'Gray');

insert into customers(cust_id, name, phone, address, city, state, country, postal_code)
values('10001', 'Pablo Picasso', '+34 636 17 63 82', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045');

insert into customers(cust_id, name, phone, address, city, state, country, postal_code)
values('20001', 'Abraham Lincoln', '+1 305 907 7086', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130');

insert into customers(cust_id, name, phone, address, city, state, country, postal_code)
values('30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

insert into salespersons(salesperson_id, name, store)
values('00001', 'Petey Cruiser', 'Madrid');

insert into salespersons(salesperson_id, name, store)
values('00002', 'Anna Sthesia', 'Barcelona');

insert into salespersons(salesperson_id, name, store)
values('00003', 'Paul Molive', 'Berlin');

insert into salespersons(salesperson_id, name, store)
values('00004', 'Gail Forcewind', 'Paris');

insert into salespersons(salesperson_id, name, store)
values('00005', 'Paige Turner', 'Mimia');

insert into salespersons(salesperson_id, name, store)
values('00006', 'Bob Frapples', 'Mexico City');

insert into salespersons(salesperson_id, name, store)
values('00007', 'Walter Melon', 'Amsterdam');

insert into salespersons(salesperson_id, name, store)
values('00008', 'Shonda Leer', 'São Paulo');

insert into invoices(invoice_num, car, customer, salesperson)
values('852399038', 0, 1, 3);

insert into invoices(invoice_num, car, customer, salesperson)
values('731166526', 3, 0, 5);

insert into invoices(invoice_num, car, customer, salesperson)
values('271135104', 2, 2, 7);

