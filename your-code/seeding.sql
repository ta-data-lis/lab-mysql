SET SQL_MODE='no_auto_value_on_zero';

INSERT INTO cars(carsid, VIN, Manufacture, Model, V_Type, V_Year, HP, Color)
VALUES ('0','3K096I98581DHSNUP', 'Volkswagen', 'Tiguan','SUV', '2019','136', 'Blue');

INSERT INTO cars(VIN, Manufacture, Model, V_Type, V_Year, HP, Color)
VALUES ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter','Sedan', '2019','110', 'Red');

INSERT INTO customers(customersid, Customer_ID, C_Name, Phone, Email, Adress, City, State, Country, Postal )
VALUES ('0', '10001', 'Pablo Picasso', '+34 636 17 63 82', '', 'Paseo de la Chopera, 14','Madrid', 'Madrid','Spain', '28045');

INSERT INTO customers(Customer_ID, C_Name, Phone, Email, Adress, City, State, Country, Postal )
VALUES ('20001', 'Abraham Lincoln', '+3+1 305 907 7086', '', ' 120 SW 8th St','Miami', 'Florida','United States', '33130');

INSERT INTO salespersons(salespersonsid, Staff_ID, Staff_name, Store)
VALUES ('0','00001', 'Petey Cruisert', 'Madrid');

INSERT INTO salespersons(Staff_ID, Staff_name, Store)
VALUES ('00002', 'Anna Sthesia', 'Barcelona');
INSERT INTO salespersons(Staff_ID, Staff_name, Store)
VALUES ('00003', 'Paul Molive', 'Berlin');
INSERT INTO salespersons(Staff_ID, Staff_name, Store)
VALUES ('00004', 'Gail Forcewind', 'Paris');
INSERT INTO salespersons(Staff_ID, Staff_name, Store)
VALUES ('00005', 'Paige Turner', 'Mimia');

INSERT INTO invoices(invoiceid, invoice, invoice_date, carsid, customersid, salespersonsid)
VALUES ('0', '852399038', '2018-08-22', '0', '1', '3');

INSERT INTO invoices(invoice, invoice_date, carsid, customersid, salespersonsid)
VALUES ('731166526', '2018-12-31', '1', '0', '4');
