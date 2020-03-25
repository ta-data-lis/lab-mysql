USE lab_mysql;
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

-- Couldn't make "NO_AUTO_VALUE_ON_ZERO" work.
-- Was it the idea to copy, paste and manually organize the dummy data?

INSERT INTO cars (id,VIN,manufacturer,model,year,color) 
VALUES(0,'3K096I98581DHSNUP','Volkswagen','Tiguan', 2019, 'Blue'),
(NULL,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
(NULL,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
(NULL,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
(NULL,'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
(NULL,'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');

INSERT INTO customers (id,customerID,name,phone_number,email,address,city,state_province,country,zip_postalcode)
VALUES
(0,10001,'Pablo Picasso',0034636176382,NULL,'Paseo de la Chopera, 14','Madrid','Madrid','Spain',28045),
(NULL,20001,'Abraham Lincoln',0013059077086,NULL,'120 SW 8th St','Miami','Florida','United States',33130),
(NULL,30001,'Napoléon Bonaparte',0033179754000,NULL,'40 Rue du Colisée','Paris','Île-de-France','France',75008);

INSERT INTO salespersons(id,staffID,name,store)
VALUES
(0,00001,'Petey Cruiser','Madrid'),
(NULL,00002,'Anna Sthesia','Barcelona'),
(NULL,00003,'Paul Molive','Berlin'),
(NULL,00004,'Gail Forcewind','Paris'),
(NULL,00005,'Paige Turner','Mimia'),
(NULL,00006,'Bob Frapples','Mexico City'),
(NULL,00007,'Walter Melon','Amsterdam'),
(NULL,00008,'Shonda Leer','São Paulo');

INSERT INTO invoices (id,invoiceNumber, date,car_VIN,customer_ID,salesperson_staffID)
VALUES
(0,	852399038,'2018-08-22',0,1,3),
(NULL, 731166526,'2018-12-31',3,0,5),
(NULL, 271135104,'2019-01-22',2,2,7);