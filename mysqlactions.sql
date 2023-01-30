CREATE TABLE IF NOT EXISTS
mysqlactions.cars(ID INT PRIMARY KEY,
		VIN VARCHAR(52),
		Manufacturer VARCHAR(52),
		Model VARCHAR(52),
        Years INT,
        Color VARCHAR(52));
        
CREATE TABLE IF NOT EXISTS
mysqlactions.customers(ID INT PRIMARY KEY,
					Customer_ID INT,
                    Name VARCHAR(20),
                    Phone VARCHAR(30),
                    Email VARCHAR(52) DEFAULT 'ahsh@gmail.com',
                    Address VARCHAR (52),
                    City VARCHAR(52),
                    State_Province VARCHAR(52),
                    Country VARCHAR(20),
                    POSTAL VARCHAR(10));

CREATE TABLE IF NOT EXISTS
mysqlactions.salespersons(ID INT PRIMARY KEY, 
					Staff_ID INT,
					Namess VARCHAR(20),
					Store VARCHAR(20));
                    
CREATE TABLE IF NOT EXISTS 
mysqlactions.invoices(ID INT PRIMARY KEY, 
					Invoice_Number INT,
					Date VARCHAR(20),
					car INT,
                    Customer INT,
                    Sales_Person INT);

DROP TABLE IF EXISTS mysqlactions.invoices;
                    
INSERT INTO mysqlactions.cars (ID, VIN, Manufacturer, Model, Years, Color)
VALUES (0,  '3K096I98581DHSNUP' , 'Volkswagen' , 'Tiguan' , 2019 , 'Blue'),
	   (1 , 'ZM8G7BEUQZ97IH46V' , 'Peugeot' , 'Rifter' , 2019 , 'Red' ),
	   (2 , 'RKXVNNIHLVVZOUB4M' , 'Ford' , 'Fusion' , 2018 , 'White'),
       (3 , 'HKNDGS7CU31E9Z7JW' , 'Toyota' , 'RAV4' , 2018 , 'Silver'),
	   (4 , 'DAM41UDN3CHU2WVF6' , 'Volvo' , 'V60' , 2019 , 'Gray'),
       (5 , 'DAM41UDN3CHU2WVF6' , 'Volvo' , 'V60 Cross_Country', 2019 , 'Gray');
       
INSERT INTO mysqlactions.Customers (ID,Customer_ID, Name, Phone, Email, Address, City, State_Province, Country, POSTAL)
VALUES (0 , 10001 , 'Pablo Picasso' , '+34 636 17 63 82' , '' , 'Paseo de la Chopera, 14' , 'Madrid' , 'Madrid' , 'Spain' , 28045 ),
	   (1 , 20001 , 'Abraham Lincoln' , '+1 305 907 7086' , '' , '120 SW 8th St' , 'Miami' , 'Florida' , 'United States' , 33130 ),
       (2 , 30001 , 'Napoléon Bonaparte' , '+33 1 79 75 40 00' , '' , '40 Rue du Colisée' , 'Paris' , 'Île-de-France' , 'France' , 75008 );
 
INSERT INTO mysqlactions.salespersons (ID, Staff_ID, Namess, Store)
VALUES (0, 00001, 'Petey Cruiser', 'Madrid'),
	   (1, 00002, 'Anna Sthesia', 'Barcelona'),
       (2, 00003, 'Paul Molive', 'Berlin'),
       (3, 00004, 'Gail Forcewind', 'Paris'),
       (4, 00005, 'Paige Turner', 'Mimia'),
       (5, 00006, 'Bob Frapples', 'Mexico City'),
       (6, 00007, 'Walter Melon', 'Amsterdam'),
       (7, 00008, 'PShonda Leer', 'São Paulo');
       
INSERT INTO mysqlactions.invoices (ID, Invoice_Number,Date, car, Customer, Sales_Person)
VALUES ( 0 , 852399038 , '22-08-2018' , 0 , 1 , 3 ),
       ( 1 , 731166526 , '31-12-2018' , 3 , 0 , 5 ),
	   (2 , 271135104 , '22-01-2019' , 2 , 2 , 7 );