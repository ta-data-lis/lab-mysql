use lab_mysql;
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
insert into cars(id_car,manufacturer,model,year_car,color)
values ('3K096I98581D','Volkswagen','Tiguan',2019,'Blue'),
('ZM8G7BEUQZ97','Peugeot','Rifter',2019,'Red'),
('RKXV2NIH6VVZ','Ford','Fusion',2018,'White'),
('HKNDGS7CU31E','Toyota','RAV4',2018,'Silver'),
('DAM41UDN3CHU','Volvo','V60',2019,'Gray'),
('DAM41UDN3CHU','Volvo','V60 Cross Country',2019,'Gray');
insert into salesperson(staff_id,name_sell,store)
values ('0000010','John Cena','Madrid'),
('0000015','Shawn Michaels','Lisboa'),
('0000020','Undertaker','Barcelona'),
('0002121','Batista','Parsi'),
('0000027','Oliver Kahn','Mexico City');
insert into customers(cust_id,cust_name,phone,adress,city,country)
values('PAR20004352','John Long','351915936421','Champs Elisée','Paris','France'),
('LIS20004453','Cristina Curta','351915819107','Almirante Reis 27','Lisboa','Portugal'),
('MAD20004653','Gonzalo Higuain','005567489012','Puertas del Sol 45','Madrid','Spain');
insert into invoices(inv_num,date_inv,id_car,cust_id,staff_id,price)
values ('8523990384','2018-09-22','3K096I98581D','PAR20004352','0000010',50000),
('8523990385','2018-09-14','RKXV2NIH6VVZ','LIS20004453','0002121',20000),
('8523990386','2018-09-07','RKXV2NIH6VVZ','MAD20004653','0000020',18000);

select * from cars;
select * from customers;
select * from salesperson;
select * from invoices;

