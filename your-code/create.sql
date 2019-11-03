CREATE DATABASE lab_sql;
USE lab_sql;

CREATE TABLE cars(
 id INT PRIMARY KEY AUTO_INCREMENT,
 VIN varchar(30) NOT NULL,
 Manufacturer varchar(30),
 Model varchar(30),
 Year int,
 color varchar(30)
 );
 
 CREATE TABLE customers(
  id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id varchar(10) NOT NULL,
  name varchar(50) NOT NULL,
  phone varchar(20) NOT NULL,
  email varchar(50),
  address varchar(100),
  city varchar(50),
  province varchar(50),
  country varchar(50),
  postal_code varchar(30)
);

CREATE TABLE salespersons(
  id INT PRIMARY KEY AUTO_INCREMENT,
  staff_id varchar(10) NOT NULL,
  name varchar(50) NOT NULL,
  store varchar(50) NOT NULL
);

CREATE TABLE invoices(
  id INT PRIMARY KEY AUTO_INCREMENT,
  invoice_no varchar(20) NOT NULL,
  invoice_date date NOT NULL,
  car_id INT,
  customer_id INT,
  salesperson_id INT,

  CONSTRAINT fk_car
    FOREIGN KEY (car_id)
        REFERENCES cars(id),
  CONSTRAINT fk_customer
    FOREIGN KEY (customer_id)
        REFERENCES customers(id),
  CONSTRAINT fk_salesperson
    FOREIGN KEY (salesperson_id)
        REFERENCES salespersons(id)
);
