#I entered all the data only then to realise the SQL code would not be submitted if I did not save, this are some of the 'leftovers' I found by using UNDO
#lost all of the Cars sql :( - will submit the database in the file db.sql


INSERT INTO Staff (Staff_ID,Name,Store) 
    VALUES(00001,'Petey Cruiser','Madrid'),(00002,'Anna Sthesia ','Barcelona'),
(00003,'Paul Molive','Berlin'),
(00004,'Gail Forcewind','Paris'),
(00005,'Paige Turner',' Mimia'),
(00006,'Bob Frapples','Mexico City'),
(00007,'Walter Melon','Amsterdam'),
(00008,'Shonda Leer','São Paulo');

INSERT INTO Invoice (InvoiceNR,Date,VIN_NR,Customer_ID,Staff_ID) 
    VALUES(731166526,'2018-12-31',3,0,5),(271135104,'2019-01-22',2,2,7);

INSERT INTO Customer (Customer_ID,Name,Phone,Email,City,State,Country,Postcode) 
    VALUES(10001,'Pablo Picasso','+34636176382','Paseo de la Chopera, 14','Madrid','Madrid ','Spain', 28045);
    