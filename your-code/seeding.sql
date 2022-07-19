-- WEEK 2 - DAY 2 - LAB


-- Challenge 3


SELECT *
FROM LAB_W2_D2.invoices;


INSERT INTO LAB_W2_D2.cars (vin,manufacture,model,yr,color)
VALUES ("3K096I98581DHSNUP", "Volkswagen", "Tiguan" , 2019 , "Blue" ),
("ZM8G7BEUQZ97IH46V" , "Peugeot" , "Rifter" , 2019 ,"Red"),
("RKXVNNIHLVVZOUB4M" , "Ford", "Fusion" , 2018 , "White" ),
("HKNDGS7CU31E9Z7JW",  "Toyota" , "RAV4" , 2018 , "Silver"),
("DAM41UDN3CHU2WVF6 ", "Volvo ", "V60" , 2019, " Gray"),
("DAM41UDN3CHU2WVF7" , "Volvo" , "V60 Cross Country" , 2019, " Gray");


INSERT INTO LAB_W2_D2.customers (cust_id,name,phone,email,adress,city,state,country,zip_code)
VALUES (10001 , "Pablo Picasso" , "+34 636 17 63 82" , "-" , "Paseo de la Chopera 14" , "Madrid" , "Madrid" , "Spain" , 28045),
(20001 , "Abraham Lincoln" , "+1 305 907 7086" , "-" , "120 SW 8th St" , "Miami" , "Florida" , "United States" ,33130),
(30001 , "Napoléon Bonaparte" , "+33 1 79 75 40 00" , "-" , "40 Rue du Colisée" , "Paris" , "Île-de-France" , "France" , 75008);


INSERT INTO LAB_W2_D2.sales_person(staff_id,name,store)
VALUES (00001 , "Petey Cruiser" , "Madrid"),
(00002 ," Anna Sthesia", "Barcelona" ),
(00003 , "Paul Molive ", "Berlin"),
(00004 , "Gail Forcewind" , "Paris"),
(00005 , "Paige Turner ", "Mimia"),
(00006 , "Bob Frapples" , "Mexico City"),
(00008 , "Shonda Leer" , "São Paulo");


INSERT INTO LAB_W2_D2.invoices(inv_numb,date,car,customer,sales_person)
VALUES (852399038 , "2018-08-22" , 0 , 1 , 3 ),
(731166526 , "2018-12-31" , 3 , 0 , 5),
(271135104 , "2019-01-22" , 2 , 2 , 7);
