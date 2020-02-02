select count(*) from cars;
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
insert into cars
(ID, VIN, manufacturer, model, production_year, color)
values
(default, "3K096I98581DHSNUP", "Volkswagen", "Tiguan",2019, "Blue"),
(1, "ZM8G7BEUQZ97IH46V","Peugeot","Rifter", 2019, "Red"),
(2, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
(3, "HKNDGS7CU31E9Z7JW","Toyota", "RAV4", 2018, "Silver"),
(4, "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
(5, "DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

select * from cars;

insert into customers
(ID, customer_ID, c_name, phone_number, email, address, city, state, country, postal_code)
values 
(default, 10001, "Pablo Picasso", 0034636176382, null, "Paseo de la Chopera, 14", "madrid","madrid","spain",28045),
(1, 20001, "Abraham Lincoln",0013059077086, null, "120 SW 8th St","miami","florida","United States",33130),
(2, 30001,"Napoléon Bonaparte",0033179754000,null,"40 Rue du Colisée","Paris","Île-de-France","France",75008);

select * from customers;

insert into salesperson
(ID, staff_ID, s_name, store)
values
(default,00001,"Petey Cruiser","Madrid"),
(1, 00002,"Anna Sthesia","Barcelona"),
(2,00003,"Paul Molive", "Berlin"),
(3,00004,"Gail Forcewind","Paris"),
(4,00005,"Paige Turner","Mimia"),
(5,00006,"Bob Frapples","Mexico City"),
(6,	00007,"Walter Melon","Amsterdam"),
(7,"00008","Shonda Leer","São Paulo");

select * from salesperson;

insert into invoices
(ID, invoice_num, i_date, car_id, customer_ID, staff_ID)
values
(default, 852399038,	22-08-2018 ,0 ,1 ,3),
(1,731166526,	31-12-2018,	3,	0,	5),
(2,271135104,	22-01-2019,	2,	2,	7);

select * from invoices;

update invoices
set i_date = "22-08-2018"
where ID = 0; 

update invoices
set i_date = "2018-08-22"
where ID=0;

select * from invoices;

update invoices
set i_date = "2018-12-31"
where ID=1;

update invoices
set i_date = "2019-01-22"
where ID=2;

select * from invoices;