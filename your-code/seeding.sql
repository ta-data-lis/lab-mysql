LOCK TABLES `CARS` WRITE;
INSERT INTO `CARS` VALUES 
(NULL, '3K096I98581DHSNUP','Volkswagen','Tiguan','2019','Blue'), 
(NULL, 'RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White'),
(NULL, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
(NULL, 'RKXVNNIHLVVZOUB5M','Ford','Fusion','2018','White'),
(NULL, 'HKNDGS7CU31E9Z7JW', 'Toyota','RAV4','2018','Silver'),
(NULL, 'DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray' ),
(NULL, 'DAM41UDN3CHU2WVF7','Volvo','V60 Cross Country', '2019','Gray');
UNLOCK TABLES;


LOCK TABLES `Customers` WRITE;
INSERT INTO `Customers` VALUES 
(NULL, '10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera 14', 'Madrid', 'Madrid','Spain', '28045' ),
(NULL, '20001', 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130' ),
(NULL, '30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008' );
UNLOCK TABLES;


LOCK TABLES `salespersons` WRITE;
INSERT INTO `salespersons` VALUES 
(NULL, '00001', 'Petey Cruiser', 'Madrid'),
(NULL, '00002', 'Anna Sthesia', 'Barcelona' ),
(NULL, '00003', 'Paul Molive', 'Berlin'), 
(NULL, '00004','Gail Forcewind', 'Paris'), 
(NULL, '00005', 'Paige Turner', 'Mimia'), 
(NULL, '00006', 'Bob Frapples', 'Mexico City'), 
(NULL, '00007', 'Walter Melon', 'Amsterdam'), 
(NULL, '00008', 'Shonda Leer', 'São Paulo');
UNLOCK TABLES;

select * from salespersons;

LOCK TABLES `Invoices` WRITE;
INSERT INTO `Invoices` VALUES 
(NULL, '852399038', '22-08-2018', '3K096I98581DHSNUP', '20001', '00004'),
(NULL, '731166526','31-12-2018','HKNDGS7CU31E9Z7JW','10001','00006'), 
(NULL, '271135104', '22-01-2019', '2','RKXVNNIHLVVZOUB4M', '00008');
UNLOCK TABLES; 

select * from Invoices;

