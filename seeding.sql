

INSERT INTO CARS (CAR_ID,MANUFACTURER,MODEL,YEAR,COLOR,DATE_SOLD)
VALUES ('1110',"Volkswagen","Tiguan","2019","Blue",'2018-12-12'),
('2220',"Mercedes","EAD","2018","Green",'2019-01-01'),
('3330',"Mustang","RAV4","2015","Black",'2016-10-24'
);


INSERT INTO CUSTOMER (CUSTOMER_ID,NAME,ADDRESS,PHONE,CAR_ID,DATE_SOLD)
VALUES ('10001','Pablo Picasso','Paseo de la Chopera 14 Madrid','+34 636 17 63 82','1110','2018-12-12'),
('20001','Abraham Lincoln','120 SW 8th St Miami','+1 305 907 7086','2220','2016-10-24'),
('30001','Napoléon Bonaparte','40 Rue du Colisée Paris','+33 1 79 75 40 00','3330','2017-09-09'
);

INSERT INTO SALESPERSON (STAFF_ID, NAME, ADDRESS, OUTLET)
VALUES ('00001','Petey Cruiser', 'Madrid', 'Berlin'),
('00002','Anna Sthesia','Barcelona','Barcelona'), 
('00003','Paul Molive','Rotterdam','Amsterdam'
);


INSERT INTO INVOICE (INVOICE_NR,INV_DATE,CAR_ID,CUSTOMER_ID,STAFF_ID)
VALUES ('201810','2018-08-22','3330','20001','00001'),
('201812','2017-08-22','1110','10001','00003'
);

