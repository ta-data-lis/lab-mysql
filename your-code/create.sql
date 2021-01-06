CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE Cars ( VIN VARCHAR(20), Manufacturer VARCHAR(20), Years INTEGER(20), Model VARCHAR(20), Color VARCHAR(20), 
	PRIMARY KEY (VIN)
);
CREATE TABLE Salesperson (Staff_ID INTEGER(20), Seller_name VARCHAR(20), Store VARCHAR(20),
	PRIMARY KEY (Staff_ID)
);
CREATE TABLE Customers (Customer_ID INTEGER(20), Customer_name VARCHAR(20), Phone_numb VARCHAR (20), Email VARCHAR(20), Address VARCHAR(20), City VARCHAR(20), State VARCHAR(20),
				Country VARCHAR(20), Zip INTEGER(20),
                PRIMARY KEY (Customer_ID)
);
CREATE TABLE Invoice (Invoice_number INTEGER(20), Purchase_day DATE, VIN VARCHAR(20), Customer_name VARCHAR(20), Customer_ID INTEGER(20), Seller_name VARCHAR(20),
				Staff_ID INTEGER(20), Store VARCHAR(20),
                PRIMARY KEY (Invoice_number)
);

ALTER TABLE Invoice
ADD(			FOREIGN KEY (VIN) REFERENCES Cars(VIN),
                FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
                FOREIGN KEY (Staff_ID) REFERENCES Salesperson(Staff_ID)
)
;

/*Seeding*/

ALTER TABLE invoice
DROP FOREIGN KEY invoice_ibfk_1, DROP FOREIGN KEY invoice_ibfk_2, DROP FOREIGN KEY invoice_ibfk_3
;

ALTER TABLE cars
DROP PRIMARY KEY , 
ADD( ID INTEGER, PRIMARY KEY (ID))
;

ALTER TABLE customers
DROP PRIMARY KEY,
ADD( ID INTEGER, PRIMARY KEY (ID)),
RENAME COLUMN Phone_numb TO Phone,
RENAME COLUMN Zip TO Postal
;

ALTER TABLE salesperson
DROP PRIMARY KEY,
ADD (ID INTEGER,  PRIMARY KEY (ID))
;

ALTER TABLE invoice
DROP PRIMARY KEY,
DROP VIN ,DROP Store, DROP Staff_ID,DROP Customer_ID, DROP Seller_name, DROP Customer_name,
ADD (ID INTEGER,  Car INTEGER(20), Customer INTEGER (20), Sales_Person INTEGER(20),
PRIMARY KEY (ID)
);

ALTER TABLE invoice
ADD(
		FOREIGN KEY (Car) REFERENCES cars(ID),
		FOREIGN KEY (Customer) REFERENCES customers(ID),
		FOREIGN KEY (Sales_Person) REFERENCES salesperson(ID)
		
);