USE lab_mysql;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

INSERT INTO cars (car_id,vin,manuf,model,car_year,color)
VALUES 
(0,"3K096I98581DHSNUP","Volkswagen","Tiguan",2019,"Blue"),
(1,"ZM8G7BEUQZ97IH46V" ,"Peugeot" ,"Rifter",2019 ,"Red" ),
(2,"RKXVNNIHLVVZOUB4M" ,"Ford" ,"Fusion" , 2018 ,"White"),
(3 ,"HKNDGS7CU31E9Z7JW" ,"Toyota" ,"RAV4" ,2018 ,"Silver"),
(4 ,"DAM41UDN3CHU2WVF6" ,"Volvo" ,"V60" ,2019 ,"Gray" ),
(5,"DAM41UDN3CHU2WVF6" ,"Volvo" ,"V60_Cross_Country" ,2019 ,"Gray");

-- Alter vin data type from smallint to varchar
ALTER TABLE cars
MODIFY COLUMN vin VARCHAR(30);

-- UPDATING VALUES in vin
UPDATE lab_mysql.cars
SET vin = "3K096I98581DHSNUP"
WHERE car_id = 0;

UPDATE lab_mysql.cars
SET vin = "ZM8G7BEUQZ97IH46V"
WHERE car_id = 1;

UPDATE lab_mysql.cars
SET vin = "RKXVNNIHLVVZOUB4M"
WHERE car_id = 2;

UPDATE lab_mysql.cars
SET vin = "HKNDGS7CU31E9Z7JW"
WHERE car_id = 3;

UPDATE lab_mysql.cars
SET vin = "DAM41UDN3CHU2WVF6"
WHERE car_id = 4;

UPDATE lab_mysql.cars
SET vin = "DAM41UDN3CHU2WVF6"
WHERE car_id = 5;

INSERT INTO costumers (cost_ID,cost_name,phone_num,email,address,city,state_provi,country,zip_post_code)
VALUES 
(10001, "Pablo Picasso", +34636176382, 0 , "Paseo de la Chopera 14","Madrid", "Madrid","Spain", 28045),
(20001, "Abraham Lincoln", +13059077086, 0 , "120 SW 8th St ", "Miami "," Florida ", "United States ",33130),
(30001, "Napoléon Bonaparte", +33179754000, 0 , "40 Rue du Colisée","Paris ","Île-de-France ","France ",75008);


INSERT INTO salespersons (salesper_id, sper_name, store)
VALUES (00001, "Petey Cruiser", "Madrid"),
(00002,"Anna Sthesia","Barcelona"),
(00003,"Paul Molive","Berlin"),
(00004,"Gail Forcewind","Paris"),
(00005,"Paige Turner","Mimia"),
(00006,"Bob Frapples","Mexico City"),
(00007,"Walter Melon","Amsterdam"),
(00008,"Shonda Leer","São Paulo");

INSERT INTO invoices (inv_id,inv_date,car_id,cost_id,salesper)
VALUES (852399038, "2018-08-22", 0, 20001, 3),
(731166526, "2018-12-31", 3, 10001, 5),
(271135104, "2019-01-22", 2, 30001, 7);

