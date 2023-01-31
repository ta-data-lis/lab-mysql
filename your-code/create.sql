create table if not exists
cars_new(Id int not null,
	 VIN int primary key,
	 Manufacturer varchar (52),
	 Model varchar (52),
     Year int not null,
     Color varchar (52)
     );
create table if not exists
customers(Id int not null,
	 Customer_id int primary key,
	 Name varchar (52),
	 Phone_number varchar (52),
     email varchar(52) default 'johndoe@gmail.com',
     Address varchar (52),
     City varchar (52),
     State_province varchar (52),
     Country varchar (52),
     Zip_postal_code int not null
     );
create table if not exists
salespersons(Id int not null,
	 Staff_id int primary key,
	 Name varchar (52),
	 Store varchar (52)
	 );
     
     
create table if not exists
invoices(ID int not null,
	 invoice_number int primary key,
	 Date varchar(52),
	 Cars_ID varchar (52),
     Costumers_ID varchar(52) default ' ',
     Staff_ID  varchar (52));
     
     
