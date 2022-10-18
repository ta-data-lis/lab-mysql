CREATE database lab_mysql_action;
-- /*table,cars*/
CREATE TABLE IF NOT EXISTS lab_mysql_action.action(
ID  INT PRIMARY KEY AUTO_INCREMENT, 
	vehicle_id VARCHAR(20),
	manufacturer VARCHAR(50),
	model VARCHAR(50),
	manufacturer_year YEAR,
	color VARCHAR(50));
    /*Customers*/
    CREATE TABLE IF NOT EXISTS lab_mysql_action.customers(
	id INT PRIMARY KEY AUTO_INCREMENT, 
	customer_id INT,
	customer_name VARCHAR(50),
	phone VARCHAR(50),
	email VARCHAR(50),
	address VARCHAR(100),
	city VARCHAR(50), 
	state VARCHAR(50),
	country VARCHAR(50),
	postal_code VARCHAR(50));
    /*salesperson*/
    CREATE TABLE IF NOT EXISTS lab_mysql_action.salespersons(
	id INT PRIMARY KEY AUTO_INCREMENT, 
	staff_id INT,
	staff_name VARCHAR(50),
	store VARCHAR(50));
    /*invoices*/
    CREATE TABLE IF NOT EXISTS lab_mysql_action.invoices(
	id INT PRIMARY KEY AUTO_INCREMENT, 
	invoice_id INT,
	invoice_date DATE,
	vehicle_id INT,
	customer_id INT,
	staff_id INT,
FOREIGN KEY (vehicle_id) REFERENCES action(id),
FOREIGN KEY (customer_id) REFERENCES customers(id),
FOREIGN KEY (staff_id) REFERENCES salespersons(id));
/*Insert values in a tables car*/
INSERT INTO lab_mysql_action.action(vehicle_id, manufacturer, model, manufacturer_year, color)
VALUES ("3K096I98581DHSNUP", "Volkswagen", "Tiguan",  2019, "Blue"),
		("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter",  2019, "Red"),
		("RKXVNNIHLVVZOUB4M", "Ford", "Fusion",  2018, "White"),
		("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4",  2018, "Silver"),
		("DAM41UDN3CHU2WVF6", "Volvo", "V60",  2019, "Gray"),
		("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");
        /* INsert values in a customer table*/
        INSERT INTO lab_mysql_action.customers(customer_id, customer_name, phone, email, address, city, state, country, postal_code)
VALUES (10001, "Pablo Picasso", "+34 636 17 63 82", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045),
		(20001, "Abraham Lincoln", "+1 305 907 7086", "-", "120 SW 8th St", "Miami", "Florida", "United States", 33130),
		(30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée", "Paris", "Île-de-France", "France", 75008);
/* INsert values in a invoices table*/
INSERT INTO lab_mysql_action.invoices(invoice_id, invoice_date, vehicle_id, customer_id, staff_id)
VALUES (852399038, "2018-08-22", 1, 1, 3),
		(731166526, "2018-12-31", 3, 1, 5),
		(271135104, "2019-01-22", 2, 2, 7);
/*Insert values in a salesperson table*/
INSERT INTO lab_mysql_action.salespersons(staff_id, staff_name, store)
VALUES (00001, "Petey Cruiser", "Madrid"),
		(00002, "Anna Sthesia", "Barcelona"),
		(00003, "Paul Molive", "Berlin"),
		(00004, "Gail Forcewind", "Paris"),
		(00005, "Paige Turner", "Mimia"),
		(00006, "Bob Frapples", "Mexico City"),
		(00007, "Walter Melon", "Amsterdam"),
		(00008, "Shonda Leer", "São Paulo");



