USE lab_mysql;

# values to cars table
INSERT INTO cars (car_vin,maker,model,bulid_year,color)
VALUES ("3K096I98581DHSNUP","Volkswagen","Tiguan",2019,"Blue"),("ZM8G7BEUQZ97IH46V","Peugeot","Rifter",2019,"Red"),
("RKXVNNIHLVVZOUB4M","Ford","Fusion",2018,"White"),("HKNDGS7CU31E9Z7JW","Toyota","RAV4",2018,"Silver"),
("DAM41UDN3CHU2WVF6","Volvo","V60 Cross Country",2019,"Gray");

# values to customers table
INSERT INTO customers (cust_id,cust_name,cust_phone,cust_email,cust_address,cust_city,cust_state,cust_zip,cust_country)
VALUES (10001,"Pablo Picasso","+34636176382","-","Paseo de la Chopera, 14","Madrid","Madrid",28045,"Spain"),
(20001,"Abraham Lincoln","+13059077086","-","120 SW 8th St","Miami","Florida",33130,"United States"),
(30001,"Napoléon Bonaparte","+33179754000","-","40 Rue du Colisée","Paris","Île-de-France",75008,"France");

# values to salesperson table
INSERT INTO salesperson (staff_id,full_name,store_location)
VALUES (00001,"Petey Cruiser","Madrid"),(00002,"Anna Sthesia","Barcelona"),("00003","Paul Molive","Berlin"),
(00004,"Gail Forcewind","Paris"),(00005,"Paige Turner","Mimia"),(00006,"Bob Frapples","Mexico City"),
(00007,"Walter Melon","Amsterdam"),(00008,"Shonda Leer","São Paulo");

# i choose different dummy values for car_id and cust_id because they've been set to zero
INSERT INTO invoices (invoice_no,sales_date,car_id,cust_id,salesperson_id)
VALUES ("852399038","2018-08-22",3,1,3),("731166526","2018-12-31",3,3,5),("271135104","2019-01-22",2,2,7);



