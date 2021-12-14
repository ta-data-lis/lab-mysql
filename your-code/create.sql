USE lab_mysql;

CREATE TABLE cars(
carsid       INT PRIMARY KEY AUTO_INCREMENT,
VIN          VARCHAR(30),
Manufacture  VARCHAR(20), 
Model        VARCHAR(30),
V_Type       VARCHAR(15),
V_Year       YEAR,
HP           INT, 
Color        VARCHAR(15)
);
 
CREATE TABLE customers(
customersid INT PRIMARY KEY AUTO_INCREMENT,
Customer_ID  VARCHAR(7), 
C_Name       VARCHAR(20), 
Phone        VARCHAR(20), 
Email        VARCHAR(20),
Adress       VARCHAR(30), 
City         VARCHAR(15), 
State        VARCHAR(20), 
Country      VARCHAR(20), 
Postal       VARCHAR(6)
);

CREATE TABLE salespersons(
salespersonsid  INT PRIMARY KEY AUTO_INCREMENT, 
Staff_ID        VARCHAR(5), 
Staff_name      VARCHAR(20), 
Store           VARCHAR(20)
);

CREATE TABLE invoices(
invoiceid      INT PRIMARY KEY AUTO_INCREMENT,
invoice         VARCHAR(10),
invoice_date    DATE,
carsid          INT,
customersid     INT,
salespersonsid  INT,
FOREIGN KEY(carsid)         references cars(carsid),
FOREIGN KEY(customersid)    references customers(customersid),
FOREIGN KEY(salespersonsid) references salespersons(salespersonsid)
);