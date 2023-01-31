CREATE TABLE lab_mysql.Cars 
(ID INT NOT NULL, VIN INT NOT NULL, Manufactorer VARCHAR(50), 
Model VARCHAR(50), Year INT NOT NULL, Color VARCHAR(50));

CREATE TABLE lab_mysql.Customers 
(ID INT NOT NULL, Customer_ID INT NOT NULL, Name VARCHAR(50), 
Phone VARCHAR(50), Email VARCHAR(50), Address VARCHAR(50), City VARCHAR(50), 
State_Province VARCHAR(50), County VARCHAR(50), Postal VARCHAR(50));

CREATE TABLE lab_mysql.Sales_Person 
(ID INT NOT NULL,Staff_ID INT NOT NULL, Name VARCHAR(50), Store VARCHAR(50)); 

CREATE TABLE lab_mysql.Invoices
(ID INT NOT NULL, Invoice_Number INT NOT NULL, Date VARCHAR(50), 
Car INT NOT NULL, Customer INT NOT NULL, Sales_Person INT NOT NULL);