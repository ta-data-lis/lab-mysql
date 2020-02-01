#### Stores
insert into stores(
Unnamed ,  StoreID, phoneNumber ,  email,  adress, city ,  state, country, ZIP)
VALUES
( 0 , 1, 0259043285 , ' e@ah' , 'streeta' , 'zurich', 'zh', 'ch', 678),
( 1 , 2, 03423025 , ' b@sfads' , 'streecaha' , 'bern', 'be', 'ch',9766),
( 2 , 3, 345245 , ' bgresg@a' , 'streeasdfsag' , 'geneva', 'ge', 'ch',341234),
( 2 , 4, 133245 , ' 21543@a' , 'streetasgjl' , 'lucerna', 'lu', 'ch',324);



### Cars
insert into cars(
Unnamed ,  VIN , manufacturer ,  model,  year, priceBuyed ,  StoreID)
VALUES
( 0 , 234 , ' Volkswagen' , ' Tiguan' , 2019 , 200000, 2),
( 1  , 346 , 'Peugeot ' , 'Rifter ' , 2019 , 12000 , 3),
( 2  , 2345 , 'Ford ' , 'Fusion ' , 2018, 73829 ,  2),
( 3  , 7456 , 'Toyota ' , 'RAV4 ' , 2018 , 4832 , 1),
( 4  , 22334 , 'Volvo ' , 'V60 ' , 2019 , 989 ,  2);


### Customers
insert into customers(Unnamed, CustomerID, nameC, phoneNumber, email, adress, city,state, country, ZIP)
VALUES
( 0 , 10001 ,' Pablo Picasso', 346361, '-', ' Paseo de la Chopera, 14','Madrid','Madrid','Spain', 28045 ),
(  1 ,  20001 ,'  Abraham Lincoln', 137086, '-', ' 120 SW 8th St','Miami ','Florida','United States',33130 ),
(  2 ,  30001,'  Napoléon Bonaparte', 3375400, '-', ' 40 Rue du Colisée','Paris','Île-de-France','France',75008 );

### Salespersons
insert into salespersons(Unnamed, StaffID, hiringdate, jobfunction, wage, StoreID)
VALUES
(0, 12, '2012-02-02', ' boss', 2212, 2),
(1, 13, '2014-02-12', 'finance boss', 1212, 2),
(2, 14, '2014-02-02', 'finance boss', 1212, 2),
(3, 15, '2015-02-12', 'salere', 1212, 4),
(4, 16, '2019-02-12', 'saleeser', 323, 3); 


### Invoices
insert into invoices(Unnamed, InvoiceNr, dateI, PricePayed, VIN, CustomerID, StaffID)
VALUES
(0, 123213, '2019-04-03',777777, 234, 10001, 12), 
(1, 22334, '2019-05-03',666, 7456 , 20001 ,  14), 
(2, 346, '2019-05-03',8867.4,  2345  , 10001, 13);

