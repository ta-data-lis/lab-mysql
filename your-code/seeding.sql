
INSERT INTO CARS (ID,VIN,Manufacturer, Model,Year, Color)
VALUES
(0,"3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue");
INSERT INTO CARS (VIN,Manufacturer, Model,Year, Color)
VALUES
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
("RKXVNNIHLVVZOUB4M", "Ford" , "Fusion" , 2018, "White"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60",2019,"Gray"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country",2019,"Gray");

INSERT INTO CUSTOMERS (ID, Customer_Id, Name, Phone_number, Email,Address, City,
 State_Province, Country, Postal)
VALUES 
(0,10001,"Pablo Picasso","+34 636 17 63 82",NULL,"Paseo de la Chopera 14","Madrid","Madrid","Spain",28045);
INSERT INTO CUSTOMERS (Customer_Id, Name, Phone_number, Email,Address, City,
 State_Province, Country, Postal)
VALUES 
(20001,"Abraham Lincoln","+1 305 907 7086",NULL,"120 SW 8th St","Miami","Florida","United States", 33130),
(30001,"Napoléon Bonaparte","+33 1 79 75 40 00",NULL,"40 Rue du Colisée","Paris","Île-de-France","France",75008);

INSERT INTO STAFF (ID,Employee_Id,Name,Store)
VALUES 
(0,00001,"Petey Cruiser", "Madrid");
INSERT INTO STAFF (Employee_Id,Name,Store)
VALUES 
(00002,"Anna Sthesia","Barcelona"),
(00003,"Paul Molive","Berlin"),
(00004,"Gail Forcewind","Paris"),
(00005,"Paige Turner","Mimia"),
(00006,"Bob Frapples","Mexico City"),
(00007,"Walter Melon","Amsterdam"),
(00008,"Shonda Leer","São Paulo");


INSERT INTO INVOICES (ID,Invoice_Id,Date_Invoice,Car,Customer,Sales_Person)
VALUES 
(0,852399038, "2018-08-22",	0,	1,	3);
INSERT INTO INVOICES (Invoice_Id,Date_Invoice,Car,Customer,Sales_Person)
VALUES
(731166526, "2018-12-31",	3,	0,	5),
(271135104, "2019-01-22",	2,	2,	7);
