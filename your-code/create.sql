CREATE DATABASE CARS;

USE CARS;

DROP TABLE IF EXISTS Invoices;


CREATE TABLE cars (
	ID int Primary Key AUTO_INCREMENT,
  VIN varchar(20) NOT NULL,
  manufacture varchar(40) NOT NULL,
  model varchar(20) NOT NULL,
  year_made char(4) NOT NULL,
  color varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE customers (
	customerID varchar(25) NOT NULL,
	customer_fName varchar(25) NOT NULL,
	customer_lName varchar(25) NOT NULL,
	phoneNumber varchar(25) NOT NULL,
 	email varchar(40) DEFAULT NULL, 
 	address varchar(60) NOT NULL,
 	city varchar(40) NOT NULL, 
 	state varchar(30) NOT NULL,
 	country varchar(35) NOT NULL,
	zip char(5) NOT NULL,
	PRIMARY KEY (customerID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE Salespersons (
	staffID varchar(10) NOT NULL,
	Sales_fName varchar(25) NOT NULL,
	Sales_lName varchar(25) NOT NULL,
	store_loc varchar(30) NOT NULL, 
	PRIMARY KEY (staffID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS Invoices (
	invoiceID varchar(10) NOT NULL,
	invoice_date varchar(10) NOT NULL,
	car varchar (30) NOT NULL,
	staffID varchar(10) NOT NULL,
	customerID varchar(25) NOT NULL,
	PRIMARY KEY (invoiceID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




INSERT INTO cars(VIN,manufacture,model,year_made,color) VALUES
('3K096I98581DHSNUP','Volkswagen','Tiguan','2019','Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray'),
('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country','2019','Gray');

SELECT * FROM cars;




INSERT INTO customers(customerID,customer_fName,customer_lName,phoneNumber,address,city,state,country,zip) VALUES
('10001','Pablo','Picasso','+34 636 17 63 82','Paseo de la Chopera 14','Madrid','Madrid','Spain','28045'),
('20001','Abraham','Lincoln','+1 305 907 7086','120 SW 8th St','Miami','Florida','United States','33130'),
('30001','Napoléon','Bonaparte','+33 1 79 75 40 00','40 Rue du Colisée','Paris','Île-de-France','France','75008');

SELECT * FROM customers;




INSERT INTO Salespersons(staffID,Sales_fName,Sales_lName,store_loc) VALUES
('00001','Petey','Cruiser','Madrid'),
('00002','Anna' ,'Sthesia','Barcelona'),
('00003','Paul','Molive','Berlin'),
('00004','Gail','Forcewind','Paris'),
('00005','Paige','Turner','Mimia'),
('00006','Bob','Frapples','Mexico City'),
('00007','Walter','Melon','Amsterdam'),
('00008','Shonda','Lee','São Paulo');

SELECT * FROM Salespersons;


INSERT INTO Invoices VALUES
('852399038','22-08-2018','0','1','3'),
( '1731166526','31-12-2018','3','0','5'),
('271135104','22-01-2019','2','2','7');


/*I know that I messed up the ID columns but I didn't care to change them */

SELECT * FROM Invoices;


UPDATE customers 
SET 
    email = 'ppicasso@gmail.com'
WHERE
    customer_lName = 'Picasso'


 /* 
 I cound't manage to update multiple records at once. 
 Could you write the correct code so I can see once how it should be done?  
 */ 
    
UPDATE customers 
SET 
    email = 'lincoln@us.govlincoln@us.gov',
    email = 'hello@napoleon.me'
WHERE
	customer_lName = 'Lincoln',
	customer_lName = 'Bonaparte'


	
	
SELECT * FROM Salespersons;
/*
	
Pablo Picasso	ppicasso@gmail.com
Abraham Lincoln	lincoln@us.gov
Napoléon Bonaparte	hello@napoleon.me 

