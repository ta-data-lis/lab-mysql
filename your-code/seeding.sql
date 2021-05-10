SELECT *
FROM mysql_actions.cars;

/*TABLE CARS*/
INSERT INTO mysql_actions.cars(vin, manufacturer,model,c_year,color)
VALUES ("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

SELECT *
FROM mysql_actions.customer;

/*TABLE CUSTOMER*/
INSERT INTO mysql_actions.customer(customer_id, customer_name, phone, email, address, city, state, country, zip)
VALUES (10001, "Pablo Picasso", "+34 636 17 63 82", NULL,"Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045),
(20001, "Abraham Lincoln", "+1 305 907 7086", NULL,"120 SW 8th St", "Miami", "Florida", "United States", 33130),
(30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", NULL,"140 Rue du Colisée", "Paris", "Île-de-France", "France", 75008);

SELECT *
FROM mysql_actions.salesperson;

/*TABLE INVOICES*/
INSERT INTO mysql_actions.salesperson(staff_id, staff_name, store)
VALUES (00001, "Petey Cruiser", "Madrid"),
(00002, "Anna Sthesia", "Barcelona"),
(00003, "Paul Molive", "Berlin"),
(00004, "Gail Forcewind", "Paris"),
(00005, "Paige Turner", "Mimia"),
(00006, "Bob Frapples", "Mexico City"),
(00007, "Walter Melon", "Amsterdam"),
(00008, "Shonda Leer", "São Paulo");


SELECT *
FROM mysql_actions.invoices;

/*TABLE INVOICES*/
INSERT INTO mysql_actions.invoices(invoice_id, invoice_date, vehicle_id, customer_id, staff_id)
VALUES (852399038, "22-08-2018", 1,2,4),
(731166526, "31-12-2018", 4,1,6),
(271135104, "22-01-2019", 3,3,8);
