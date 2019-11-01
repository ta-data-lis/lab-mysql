DROP TABLE IF EXISTS cars_improved;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS invoices_improved;
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS costumers_improved;
DROP TABLE IF EXISTS costumers;
DROP TABLE IF EXISTS salesperson_improved; 
DROP TABLE IF EXISTS salesperson; 

CREATE TABLE cars_improved (
  Car_ID VARCHAR(45) NOT NULL,
  Vehicle_ID_number VARCHAR(45) NOT NULL,
  manufacturer VARCHAR(45) NOT NULL,
  Model_car	VARCHAR(45) NOT NULL,
  Year_build int(11) NOT NULL,
  color	TINYTEXT,
  PRIMARY KEY (Vehicle_ID_number),
  UNIQUE (Vehicle_ID_number)
  );


INSERT INTO cars_improved 
    (Car_ID, Vehicle_ID_number, manufacturer, Model_car, Year_build, color) 
VALUES 
(0,	"3K096I98581DHSNUP", "Volkswagen",  "Tiguan", 2019, "Blue"),
(1,	"ZM8G7BEUQZ97IH46V", "Peugeot",  "Rifter", 2019, "Red"),
(2,	"RKXVNNIHLVVZOUB4M", "Ford",  "Fusion", 2018, "White"),
(3, "HKNDGS7CU31E9Z7JW", "Toyota",  "RAV4", 2018, "Silver"),
(4, "DAM41UDN3CHU2WVF6", "Volvo",  "V60", 2019, "Gray"),
(5, "DAM41UDN3CHU2WVF7", "Volvo",  "V60 Cross Country", 2019, "Gray");

CREATE TABLE costumers_improved(
  Vehicle_ID_number VARCHAR(45) NOT NULL,
  Customer_ID VARCHAR(45) NOT NULL,
  Customer_ID_number VARCHAR(45) NOT NULL,
  Customer_name VARCHAR(45) NOT NULL,
  Phone	VARCHAR(45) NOT NULL,
  Email	VARCHAR(45),
  Streetname_number	VARCHAR(45),
  City	VARCHAR(45),
  Province VARCHAR(45),
  Country VARCHAR(45),
  Postalcode VARCHAR(45),
  PRIMARY KEY (Customer_ID_number),
  FOREIGN KEY (Vehicle_ID_number) REFERENCES cars_improved(Vehicle_ID_number),
  UNIQUE (Customer_ID_number)
  );

INSERT INTO costumers_improved 
    (Customer_ID, Customer_ID_number, Customer_name, Phone,	Email, Streetname_number, City, Province, Country, Postalcode)
VALUES 
(0,	"10001", "Pablo Picasso",  "+34 636 17 63 82", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045" ),
(1,	"20001", "Abraham Lincoln",  "+1 305 907 7086", "-", "120 SW 8th St", "Miami", "Florida", "Florida,	United States", "33130" ),
(2,	"30001", "Napoléon Bonaparte",  "+33 1 79 75 40 00", "-", "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008" );

CREATE TABLE salesperson_improved(
  Vehicle_ID_number VARCHAR(45) NOT NULL,
  Sales_ID VARCHAR(45) NOT NULL,
  Staff_ID VARCHAR(45) NOT NULL,
  Staff_name VARCHAR(45) NOT NULL,
  Store	VARCHAR(45) NOT NULL,
  PRIMARY KEY (Staff_ID),
  FOREIGN KEY (Vehicle_ID_number) REFERENCES cars_improved(Vehicle_ID_number),
  UNIQUE (Staff_ID)
  );

INSERT INTO salesperson_improved 
    (Sales_ID, Staff_ID,	Staff_name,	Store)
VALUES 
(0, 00001, "Petey Cruiser", "Madrid"),
(1, 00002, "Anna Sthesia", "Barcelona"),
(2, 00003, "Paul Molive", "Berlin"),
(3, 00004, "Gail Forcewind", "Paris"),
(4, 00005, "Paige Turner", "Mimia"),
(5, 00006, "Bob Frapples", "Mexico City"),
(6, 00007, "Walter Melon", "Amsterdam"),
(7, 00008, "Shonda Leer", "São Paulo");

CREATE TABLE invoices_improved(
  Vehicle_ID_number VARCHAR(45) NOT NULL,
  Car_ID VARCHAR(45) NOT NULL,
  Customer_ID_number VARCHAR(45) NOT NULL,
  Staff_ID VARCHAR(45) NOT NULL,
  ID VARCHAR(45) NOT NULL,
  Invoice_number VARCHAR(45) NOT NULL,
  Date_invoice int(11) NOT NULL,
  Store	VARCHAR(45) NOT NULL,
  Customer_ID VARCHAR(45) NOT NULL,
  Sales_ID VARCHAR(45) NOT NULL,
  PRIMARY KEY (Staff_ID),
  FOREIGN KEY (Vehicle_ID_number) REFERENCES cars_improved(Vehicle_ID_number),
  FOREIGN KEY (Customer_ID_number) REFERENCES costumers_improved(Customer_ID_number),
  FOREIGN KEY (Staff_ID) REFERENCES salesperson_improved(Staff_ID),
  UNIQUE (Invoice_number)
  );

INSERT INTO invoices_improved 
    (ID, Invoice_number, Date_invoice, Car_ID, Customer_ID_number, Staff_ID)
VALUES 
(0, 852399038, 22-08-2018 , 0, 1,3),
(1, 731166526, 22-08-2018, 3, 0, 5),
(2, 271135104, 22-01-2019, 2, 2, 7);

