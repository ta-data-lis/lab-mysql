
INSERT INTO location (city, state,country,address)
VALUES ('lisboa','lisboa','Portugal','Rua da alegria');

insert into customer ( Location_id,name,phone_number)
values('1','pedro','9856232326');
  
insert into store (Location_id, Size,Number_of_employees)
values ( '1','12','2');

insert into salesperson(Store_id,invoice_id,name)
values('1','1','viriato');

insert into invoice(Store_id,customer_id,salesperson_id,total)
values('1','1','1','2224');

insert into cars(VIN,Manufacturer,Model,Color,Currency,Price,Store_id,invoice_id)
values('542f425f','NffIO','Formiga','amarelo','€','8.566','1','1');
