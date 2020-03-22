-- INSERT DATA --

INSERT INTO cars (VIN, brand, model, car_year, color, sold) VALUES

('AK096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue', 'Y'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red', 'N'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White', 'Y'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver', 'N'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray', 'Y'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray', 'N');

-- change data size in email from 20 to 50
ALTER TABLE costumers
MODIFY email VARCHAR(50);


INSERT INTO costumers (costumer_id, first_name, last_name, mobile, email, address, city, state, country, zip_code, amount_spent, client_since, SSN) VALUES

("10001", "Pablo", "Picasso", "+34 636 17 63 82", "tratra@cubism.es", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045", "100000", "2012-03-20", "737-73-2213"),
("20001", "Abraham", "Lincoln", "+1 305 907 7086", "president16@godblessamerica.us", "120 SW 8th St", "Miami", "Florida", "United States", "33130", "20000", "2010-05-09", "737-12-4444"),
("30001", "Napoléon", "Bonaparte", "+33 1 79 75 40 00", " allez_le_bleu@paris.fr", "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008", "25000", "2018-03-20", "123-73-2213"),
("40001", "Fernando", "Pessoa", "+33 1 79 75 40 00", "poesia@marsalgado.pt", "R. de São Bento, 17", "Lisboa", "Lisboa", "Portugal", "1200", "15000", "2014-03-20", "351-73-2213");



INSERT INTO salesperson (staff_id, first_name, last_name, store) VALUES

("00001", "Petey", "Cruiser", "Madrid"),
("00002", "Anna", "Sthesia", "Barcelona"),
("00003", "Paul", "Molive", "Berlin"),
("00004", "Gail", "Forcewind", "Paris"),
("00005", "Paige", "Turner", "Mimia"),
("00006", "Bob", "Frapples", "Mexico City"),
("00007", "Walter", "Melon", "Amsterdam"),
("00008", "Shonda", "Leer", "São Paulo");


INSERT INTO invoices (invoice_number, date_invoice) VALUES

("852399038", "22-08-2018"),
("731166526", "31-12-2018"),
("271135104", "22-01-2019");