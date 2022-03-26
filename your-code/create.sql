CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
	
	CREATE TABLE IF NOT EXISTS lab_mysql.cars (id INT PRIMARY KEY,
										  VIN VARCHAR (52),
										  Manufacturer VARCHAR (52),
                                          Model VARCHAR (52),
                                          Car_year INT NOT NULL,
                                          Color VARCHAR (52)
                                          );
										
	CREATE TABLE IF NOT EXISTS lab_mysql.costumers (id INT PRIMARY KEY,
										  Customer_ID INT NOT NULL,
										  Customer_Name VARCHAR (52),
                                          Phone VARCHAR (52),
                                          Email VARCHAR (52) DEFAULT 'jonhdoe@gmail.com',
                                          Address VARCHAR (52),
                                          City VARCHAR (52),
                                          State_Province VARCHAR (52),
                                          Country VARCHAR (52),
                                          Postal INT NOT NULL
                                          );
                                          
CREATE TABLE IF NOT EXISTS lab_mysql.salespersons (ID INT PRIMARY KEY,
										  Staff_ID INT NOT NULL,
										  Name VARCHAR (52),
                                          Store VARCHAR (52)
                                          ); 
                                          
CREATE TABLE IF NOT EXISTS lab_mysql.invoices (ID INT PRIMARY KEY,
										  Invoice_Number INT NOT NULL,
										  Date DATE,
                                          Car INT,
                                          Customer INT,
                                          Sales_Person INT
                                          ); 