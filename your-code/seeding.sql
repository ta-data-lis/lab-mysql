SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

-- insert values in an the Cars table
INSERT INTO lab_mysql.cars(ID, VIN, manufacturer, model, year, color)
VALUES (0, '3K096I98581DHSNUP', "Volkswagen", "Tiguan", 2019, 'Blue');

INSERT INTO lab_mysql.cars(ID, VIN, manufacturer, model, year, color)
VALUES (1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red');


-- insert values in an the Customers table
INSERT INTO lab_mysql.customers (ID, Customer_ID, name, phone_number, email, address, city, state_province, country, zip_code)
VALUES (0, 10001, 'Pablo Picasso', '+34 636 17 63 82', '', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045);

INSERT INTO lab_mysql.customers (ID, Customer_ID, name, phone_number, email, address, city, state_province, country, zip_code)
VALUES (1, 20001, 'Abraham Lincoln', '+1 305 907 7086', '',  '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130);

-- insert values in an the Salespersons table
INSERT INTO lab_mysql.salespersons(ID, Staff_ID, name, store)
VALUES (0, 00001, "Petey Cruiser", "Madrid");

INSERT INTO lab_mysql.salespersons(ID, Staff_ID, name, store)
VALUES (1, 00002, 'Anna Sthesia', 'Barcelona');


-- insert values in an the Invoices table
INSERT INTO lab_mysql.invoices (ID, Invoice_number, Date, Car, Customer, Salesperson)
VALUES (0, 852399038, '2018-08-22', 0, 1, 3);

INSERT INTO lab_mysql.invoices (ID, Invoice_number, Date, Car, Customer, Salesperson)
VALUES (1, 731166526, '2018-12-31', 3, 0, 5)