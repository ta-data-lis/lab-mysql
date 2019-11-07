DROP TABLE IF EXISTS `car`;

CREATE TABLE car (
    car_id int auto_increment,
    car_vin varchar(20) not NULL,
    manufactuer varchar(20),
    model varchar(20),
    year int,
    color varchar(20),
    PRIMARY KEY (car_id)
); 

  DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    costumers_id int,
    Name varchar(20) NOT NULL,
    phone  varchar(20),
    email varchar(20),
    address varchar(50),
    city varchar(20),
    state varchar(20),
    country varchar(20),
    postal varchar(20),
    PRIMARY KEY (costumers_id)
); 

  
  DROP TABLE IF EXISTS `salespersons`;
  CREATE TABLE salespersons (
    salespersons_id int auto_increment,
    salespersons_name varchar(20) NOT NULL,
	store varchar(20),
    PRIMARY KEY (salespersons_id)
); 
  
  
  DROP TABLE IF EXISTS `invoices`;
  
  
CREATE TABLE Invoices (
    invoices_id int auto_increment NOT NULL,
    invoices_no int NOT NULL,
    car_id int,
    costumers_id int,
    salespersons_id int,
    invoices_date varchar(20),
    PRIMARY KEY (invoices_id),
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (costumers_id) REFERENCES customers(costumers_id),
    FOREIGN KEY (salespersons_id) REFERENCES salespersons(salespersons_id)
); 


  