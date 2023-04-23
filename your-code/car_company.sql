CREATE DATABASE car_company;

CREATE TABLE IF NOT EXISTS car_company.car(

										vin VARCHAR(17) NOT NULL PRIMARY KEY ,
										manufacturer VARCHAR(52)NOT NULL,
                                        model VARCHAR(50)NOT NULL,
                                        car_year DATE NOT NULL,
                                        color VARCHAR(30) NOT NULL,
                                        car_index int NOT NULL);
                                        
CREATE TABLE IF NOT EXISTS car_company.costumers(

										costumer_id INT(12) NOT NULL PRIMARY KEY AUTO_INCREMENT,
										cost_name VARCHAR(72),
                                        phone VARCHAR(32),
                                        email VARCHAR(52),
                                        address VARCHAR(52),
                                        city VARCHAR(52),
                                        state VARCHAR(52),
                                        country VARCHAR(52),
                                        zip_postal VARCHAR(10),
										costum_index INT);
                                        
CREATE TABLE IF NOT EXISTS car_company.sales_person(

										staff_id INT(12) NOT NULL PRIMARY KEY AUTO_INCREMENT,
										staff_name VARCHAR(72),
                                        store_name VARCHAR(72),
                                        person_index INT);
                                        
CREATE TABLE IF NOT EXISTS car_company.invoice(

										invoice_num INT(12) NOT NULL PRIMARY KEY ,
                                        vin VARCHAR(17) NOT NULL,
                                        costumer_id INT(12) NOT NULL,
										staff_id INT(12) NOT NULL,
                                        inv_date DATE,
                                        price FLOAT,
                                        inv_index INT
                                        );
                                        
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

INSERT INTO car_company.car (vin,manufacturer, model, car_year, color, car_index) VALUES
	('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan',2019,'Blue',0),
    ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter',2019,'Red',1),
	('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion',2018,'White',2),
    ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4',2018,'Silver',3),
	('DAM41UDN3CHU2WVF6', 'Volvo', 'V60',2019,'Gray',4),
    ('DAM41UDN0CHU2WVF6', 'Volvo', 'V60 Cross Country',2019,'Pink',5);

INSERT INTO car_company.costumers (costumer_id,cost_name,phone, email, address, city, state,country,zip_postal,costum_index) VALUES
	(10001, 'Pablo Picasso', '+34 636 17 63 82','-','Paseo de la Chopera 14','Madrid','Madrid','Madrid','2845',0),
    (20001, 'Abraham Lincoln', '+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States','33130',1),
    (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00','-','40 Rue du Colisée ','Paris',' Île-de-France','France','75008',2);

INSERT INTO car_company.sales_person (staff_id,staff_name,store_name,person_index) VALUES
	(00001, 'Petey Cruiser', 'Madrid',0),
	(00002, 'Anna Sthesia', 'Barcelona',1),
    (00003, 'Paul Molive', 'Berlin',3),
	(00004, 'Gail Forcewind', 'Paris',4),
	(00005, 'Paige Turnere', 'Mimia',5),
	(00006, 'Bob Frapples', 'Mexico City',6),
	(00007, 'Walter Melon', 'Amsterdam',7),
	(00008, 'Shonda Leer', 'São Paulo',8);

INSERT INTO car_company.invoice (invoice_num,vin,costumer_id,staff_id,inv_date,price,inv_index) VALUES
	(852399038, 'DAM41UDN3CHU2WVF6', 00002,3436,22-08-2018,15000,0),
	(731166526, 'RKXVNNIHLVVZOUB4M', 00005,2453,31-12-2018,30000,1),
    (271135104, 'ZM8G7BEUQZ97IH46V', 00008,3464,22-01-2019,36547,2);

#BONUS €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€

UPDATE car_company.sales_person
SET store_name = 'Miami'
WHERE staff_id = '00005';

DELETE FROM car_company.car
WHERE car_index = 4;

#€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


                                        
                                        
                                        
                                        