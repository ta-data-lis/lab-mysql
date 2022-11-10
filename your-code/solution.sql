drop table lab_mysql.cars;
create table if not exists lab_mysql.cars (vin varchar(52) primary key,
										  manufacturer varchar(52),
                                          model varchar(52),
                                          year int,
                                          color varchar(52));                                  
create table if not exists lab_mysql.customer (customer_id int primary key,
										  customer_name varchar(52),
                                          phone_number varchar(52),
                                          email varchar(52) default "nullvalue@nullvalue.com",
                                          address varchar(52),
                                          city varchar(52),
                                          state varchar(52),
                                          country varchar(52),
                                          zip int);
										
drop table lab_mysql.staff;								
create table if not exists lab_mysql.staff (staff_id int primary key,
										  staff_name varchar(52),
                                          store_id varchar(52));
drop table lab_mysql.invoices;                                        
create table if not exists lab_mysql.invoices(invoice_id int,
											  date varchar(52),
                                              vin varchar(52),
                                              customer_id int,
                                              staff_id int);
                                              
insert into lab_mysql.cars (vin, manufacturer, model, year, color)
values ("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue");

insert into lab_mysql.cars (vin, manufacturer, model, year, color)
values ("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
       ("ZM8G7BEUQZ97IH46V","Peugeot", "Rifter", 2019, "Red"),
	   ("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4" , 2018, "Silver"),
       ("DAM41UDN3CHU2WVF6", "Volvo", "V60" , 2019, "Gray");
       
insert into lab_mysql.customer (customer_id , customer_name, phone_number, address, city, state, country, zip)
values ("10001", "Pablo Picasso", "0034636176382", "Paseo de la Chopera, 14","Madrid","Madrid", "Spain", "28045"),
       ("20001", "Abraham Lincoln", "0013059077086", "120 SW 8th St","Miami", "Florida", "United States","33130"),
	   ("30001", "Napoléon Bonaparte", "0033179754000", "40 Rue du Colisée","Paris", "Île-de-France", "France","75008");
       
insert into lab_mysql.staff(staff_id, staff_name , store_id)
values ("00001", "Petey Cruiser", "Madrid"),
	   ("00002", "Anna Sthesia", "Barcelona"),
       ("00003", "Paul Molive", "Berlin"),
       ("00004", "Gail Forcewind", "Paris"),
       ("00005", "Paige Turner", "Mimia"),
       ("00006", "Bob Frapples", "Mexico City"),
       ("00007", "Walter Melon", "Amsterdam"),
       ("00008", "Shonda Leer", "São Paulo");
       
insert into lab_mysql.invoices(invoice_id, date, vin, customer_id, staff_id)
values ("852399038", '22-08-2018', "RKXVNNIHLVVZOUB4M", "20001","00004"),
("731166526", '31-01-2018', "DAM41UDN3CHU2WVF6", "10001","00006"),
("271135104", '22-01-2019', "HKNDGS7CU31E9Z7JW", "30001","00008");
       
       
       
       
       