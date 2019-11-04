/*CREATE TABLE cars (id VARCHAR(6), vin VARCHAR(20), manufacturer VARCHAR(20),
       model VARCHAR(20), YEAR VARCHAR(4), color VARCHAR(10));
      
CREATE TABLE salespersons (id VARCHAR(6), staff_id VARCHAR(20), NAME VARCHAR(20),
       store VARCHAR(20));
       
CREATE TABLE invoices (id VARCHAR(6), inv_number VARCHAR(20), inv_date DATE, car_id VARCHAR(6), customer_id VARCHAR(20), staff_id VARCHAR(20));

CREATE TABLE customers (id VARCHAR(6), customerid VARCHAR(20), NAME VARCHAR(20), phone_number VARCHAR(20), 
		email VARCHAR(20), address VARCHAR(20), city VARCHAR(20), state_province VARCHAR(20), 
		country VARCHAR(20), zip_postal VARCHAR(20));*/
		
/*INSERT INTO cars (id,vin, manufacturer, model,YEAR, color) 
VALUES ('0','3K096I98581DHSNUP','Volkswagen','Tiguan','2019','Blue'),
('1','ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red'),
('2','HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver'), 
('3','DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray'),
('4','DAM41UDN3CHU2WVF6','Volvo','V60 CROSS Country', '2019','Gray');*/

/*INSERT INTO customers (id, customerid, NAME, phone_number, email, address, city, state_province, country, zip_postal)
VALUES ('0','10001','Pablo Picasso','+34 636 17 63 82','-',	'Paseo de la Chopera, 14', 'Madrid','Madrid','Spain','28045'),
('1','20001','Abraham Lincoln',	'+1 305 907 7086',	'-',	'120 SW 8th St',	'Miami','Florida',	'United States',	'33130'),
('2',	'30001',	'Napoléon Bonaparte',	'+33 1 79 75 40 00',	'-',	'40 Rue du Colisée',	'Paris',	'Île-de-France',	'France',	'75008');*/

/*INSERT INTO salespersons (id, staff_id, NAME, store)
VALUES ('0','00001','Petey Cruiser','Madrid'),
('1','00002','Anna Sthesia','Barcelona'),
('2','00003','Paul Molive','Berlin'),
('3','00004','Gail Forcewind','Paris'),
('4','00005','Paige Turner','Miami'),
('5','00006','Bob Frapples','Mexico City'),
('6','00007','Walter Melon','Amsterdam'),
('7','00008','Shonda Leer','São Paulo');*/

/*INSERT INTO invoices (id, inv_number, inv_date, car_id, customer_id, staff_id)
VALUES ('0','852399038','2018-08-22','0','1','3'),
('1','731166526','2018-12-31','3','0','5'),
('2','271135104','2019-01-22','2','2','7');*/

UPDATE customers
SET email = "ppicasso@gmail.com"
WHERE NAME="Pablo Picasso";

UPDATE customers
SET email = "lincoln@us.gov"
WHERE NAME="Abraham Lincoln";

UPDATE customers
SET email = "hello@napoleon.me"
WHERE NAME="Napoléon Bonaparte";

DELETE FROM cars 
WHERE model='V60 CROSS Country';