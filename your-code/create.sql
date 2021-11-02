CREATE TABLE cars(ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
VIN INT(54),
Manufacturer VARCHAR(50),
Model VARCHAR(50),
Year INT(54),
Color VARCHAR(50));
 
CREATE TABLE customers(ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Customer_ID INT(50),
Name VARCHAR(50),
Phone_Number INT(50),
Email VARCHAR(50),
Address VARCHAR(50),
City VARCHAR(50),
State_Province VARCHAR(50),
Country VARCHAR(50),
Zip_Postal INT(50)
);

CREATE TABLE salespersons(ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Staff_ID INT(50),
Staff_name VARCHAR(50),
Store VARCHAR(50));

CREATE TABLE invoices(ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Invoice_Number INT(50),
VIN INT(50)
Date DATE,
Customer_ID INT(50),
Staff_ID INT(50));


