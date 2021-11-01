CREATE DATABASE lab8;

CREATE TABLE Cars (
index_id  BIGINT ,
VIN	 BIGINT NOT NULL,
manufacturer VARCHAR(64) NOT NULL,
model VARCHAR(64),
year_model DATE,
colour VARCHAR(64),
PRIMARY KEY (VIN)
);

CREATE TABLE Salesperson (
Staff_ID  BIGINT ,
Salesman_name VARCHAR(64),
Store VARCHAR(64),
Sales_person_Index BIGINT,
PRIMARY KEY (Staff_ID)
);

CREATE TABLE Costumers (
costumer_index BIGINT ,
costumer_ID	 BIGINT NOT NULL,
costumer_name VARCHAR(64) NOT NULL,
phone_number BIGINT,
email VARCHAR(64),
address VARCHAR(64),
city VARCHAR(64),
state VARCHAR(64),
country VARCHAR(64),
zip_code VARCHAR(64),
PRIMARY KEY (costumer_ID)
);

CREATE TABLE Invoices (
invoice_index BIGINT ,
invoice_number	 BIGINT NOT NULL,
date_invoice DATE,
VIN BIGINT,
car VARCHAR(64),
costumer_ID BIGINT,
staff_ID BIGINT,
PRIMARY KEY (invoice_number)
);

