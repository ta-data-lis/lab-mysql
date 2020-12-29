USE lab_mysql;
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE location (
  city text not null,
 Location_id int not null AUTO_INCREMENT,
  state text not null,
  country text default null,
  zip_code int,
  address text,
  PRIMARY KEY (Location_id)
  );
  
  
CREATE TABLE store (
  Store_id int not null AUTO_INCREMENT,
  Location_id int not null,
  Size int default null,
  Number_of_employees int,
  PRIMARY KEY (Store_id),
  FOREIGN KEY (Location_id) REFERENCES location(Location_id)
  );


CREATE TABLE cars (
cars_id int not null AUTO_INCREMENT,
  VIN int not null ,
  Manufacturer text DEFAULT NULL,
  Model text default null,
  Color text DEFAULT NULL,
  Currency char not null,
  Price double not null,
  Store_id int not null,
    invoice_id int not null,

  PRIMARY KEY (VIN),

  FOREIGN KEY (Store_id) REFERENCES store(Store_id),
    FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id)

  );
  
  
  CREATE TABLE customer (
  customer_id int not null AUTO_INCREMENT,
  Location_id int not null,
  `name` text not null,
  Number_of_employees int,
  phone_number int ,
  email varchar(30) ,
  PRIMARY KEY (customer_id),
  FOREIGN KEY (Location_id) REFERENCES location(Location_id)
  );
  
      CREATE TABLE salesperson (
  salesperson_id int not null AUTO_INCREMENT,
  Store_id int not null,
  invoice_id int not null,
  `date` date,
  `name` varchar(40) not null,
  PRIMARY KEY (salesperson_id),
  FOREIGN KEY (Store_id) REFERENCES store(Store_id)
  );
  
  CREATE TABLE invoice (
  invoice_id int not null AUTO_INCREMENT,
  Store_id int not null,
  `date` date ,
  customer_id int not null,
  salesperson_id int null ,
  total int not null,
  PRIMARY KEY (invoice_id),
  FOREIGN KEY (Store_id) REFERENCES store(Store_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)

  );