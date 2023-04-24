# Use DATABASE lab_mysql
USE lab_mysql;

# create table Cars: 
CREATE TABLE IF NOT EXISTS Cars (
			ID  SMALLINT PRIMARY KEY,
			VIN  VARCHAR(52) NOT NULL,
			Manufacturer VARCHAR(72) NOT NULL,
			Model  VARCHAR(32) NOT NULL,
			Make_year YEAR NOT NULL,
			Color VARCHAR(32) NOT NULL);

# CREATE TABLE Salespersons:
CREATE TABLE IF NOT EXISTS Salespersons( 
			ID SMALLINT PRIMARY KEY ,
			Staff_ID  VARCHAR(32) NOT NULL,
			Name VARCHAR(72) NOT NULL,
			Store VARCHAR(72) NOT NULL);
            
# Create table Customers:
CREATE TABLE IF NOT EXISTS Customers ( 
			ID SMALLINT PRIMARY KEY,
			Customer_ID INT NOT NULL,
			Name  VARCHAR(72) NOT NULL,
			Phone  VARCHAR(52) NOT NULL,
			Email VARCHAR(52),
			Address VARCHAR(72) NOT NULL,
			City  VARCHAR(22) NOT NULL,
			State VARCHAR(32),
			Country VARCHAR(52) NOT NULL,
			Postal_code  VARCHAR(22) NOT NULL);

# Create table Invoices:
CREATE TABLE IF NOT EXISTS Invoices ( 
			ID INT PRIMARY KEY,
			Invoice_Number INT NOT NULL,
			Date DATE NOT NULL, 
			Car_id SMALLINT ,
			Customer_id SMALLINT,
			Staff_id SMALLINT);
            
            
ALTER TABLE Invoices
ADD FOREIGN KEY (Car_id) REFERENCES Cars(ID),
ADD FOREIGN KEY (Customer_id) REFERENCES Customers(ID),
ADD FOREIGN KEY (Staff_id) REFERENCES salespersons(ID);


SELECT * FROM lab_mysql.customers;

SELECT * FROM lab_mysql.salespersons;

SELECT * FROM lab_mysql.invoices;

SELECT * FROM lab_mysql.cars;

            




