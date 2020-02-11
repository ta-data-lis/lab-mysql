SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
ALTER TABLE salespersons
ADD name CHAR;

TRUNCATE table cars

INSERT INTO cars (VIN, manufacturer, model, make_year, model)
VALUES ("3K096I98581DHSNUP", "Volkswagen", "Tiguan", "2019", "Blue"),
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", "2019", "Red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", "2018", "White"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", "2018", "Silver"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60", "2019", "Gray"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60", "Cross Country", "2019", "Gray");

INSERT INTO customers (customer_id, customer_name, phone_numer, email, address, city, state, country, post_code)
VALUES ("10001", "Pablo Picasso", "34636176382", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045"),
("20001", "Abraham Lincoln", "13059077086", "-", "120 SW 8th St", "Miami", "Florida",	"United States", "33130"),
("30001", "Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée", "Paris",	"Île-de-France", "France", "75008");

INSERT INTO salespersons (staff_id, store_id, name)
VALUES ("00001", "Madrid", "Petey Cruiser"),
("00002", "Barcelona", "Anna Sthesia"),
("00003", "Berlin", "Paul Molive"),
("00004", "Paris", "Gail Forcewind"),
("00005", "Mimia", "Paige Turner"),
("00006","Mexico City","Bob Frapples" ),
("00007", "Amsterdam", "Walter Melon"),
("00008", "São Paulo", "Shonda Leer");

ALTER TABLE salespersons
ALTER COLUMN name CHAR (50);

ALTER TABLE salespersons
ALTER COLUMN store_id CHAR(50);

INSERT INTO invoices (invoice_number, date) 
VALUES(852399038,'2018-08-22'), (731166526,'2018-12-31'), (271135104,'2019-01-22');

