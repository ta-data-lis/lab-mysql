SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
insert into cars(Cars_id , Vin, Manufacturer, Model, Car_Year, Color)
values ('0', '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue');

insert into cars(Cars_id , Vin, Manufacturer, Model, Car_Year, Color)
values ('1', 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red');

insert into cars(Cars_id , Vin, Manufacturer, Model, Car_Year, Color)
values ('2', 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White');

insert into customers(Customers_id, ID, Customer_Name, PhoneNumber, Email, Address, City, State_Province, 
Country, Zip)
values ('0', '10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14',
'Madrid', 'Madrid', 'Spain', '28045');

insert into customers(Customers_id, ID, Customer_Name, PhoneNumber, Email, Address, City, State_Province, 
Country, Zip)
values ('1', '20001', 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida',
'United States', '33130');

insert into salespersons(Salespersons_id, ID, Salesperson_Name, store)
values ('0', '00001', 'Petey Cruiser', 'Madrid');

insert into salespersons(Salespersons_id, ID, Salesperson_Name, store)
values ('1', '00002', 'Anna Sthesia', 'Barcelona');

insert into salespersons(Salespersons_id, ID, Salesperson_Name, store)
values ('2', '00003', 'Paul Molive', 'Berlin');

insert into salespersons(Salespersons_id, ID, Salesperson_Name, store)
values ('3', '00004', 'Gail Forcewind', 'Paris');

insert into invoices(Invoices_id, InvoiceNumber, InvoiceDate, Cars_id, Customers_id,
Salespersons_id)
values ('0', '852399038', '22-08-2018', '0', '1', '3');

insert into invoices(Invoices_id, InvoiceNumber, InvoiceDate, Cars_id, Customers_id,
Salespersons_id)
values ('1', '731166526', '31-12-2018', '3', '0', '5');

insert into invoices(Invoices_id, InvoiceNumber, InvoiceDate, Cars_id, Customers_id,
Salespersons_id)
values ('2', '271135104', '22-01-2019', '2', '2', '7');

insert into salespersons(Salespersons_id, ID, Salesperson_Name, store)
values ('4', '00005', 'Paige Turner', 'Mimia');

select *
from salespersons;

insert into customers(Customers_id, ID, Customer_Name, PhoneNumber, Email, Address, City, State_Province, 
Country, Zip)
values ('2', '30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

select *
from customers;

insert into cars(Cars_id , Vin, Manufacturer, Model, Car_Year, Color)
values ('3', 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),
('4', 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray');

select *
from cars;