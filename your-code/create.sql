/* Challenge 2 */

/* Creating the database */

CREATE DATABASE IF NOT EXISTS lab_mysql;

/* Using it */

USE lab_mysql;

CREATE TABLE IF NOT EXISTS lab_mysql.cars (ID INT PRIMARY KEY,
										   VIN VARCHAR (30),
										   Manufacturer VARCHAR (30),
										   Model VARCHAR (30),
										   Car_year INT NOT NULL,
										   Color VARCHAR (30));

CREATE TABLE IF NOT EXISTS lab_mysql.costumers (ID INT PRIMARY KEY,
											    Customer_ID INT NOT NULL,
												Customer_Name VARCHAR (30),
												Phone VARCHAR (30),
												Email VARCHAR (30),
												Address VARCHAR (30),
												City VARCHAR (30),
												State_Province VARCHAR (30),
												Country VARCHAR (30),
												Postal INT NOT NULL);

CREATE TABLE IF NOT EXISTS lab_mysql.salespersons (ID INT PRIMARY KEY,
										           Staff_ID INT NOT NULL,
												   Name VARCHAR (30),
                                                   Store VARCHAR (30)); 

CREATE TABLE IF NOT EXISTS lab_mysql.invoices (ID INT PRIMARY KEY,
										       Invoice_Number INT NOT NULL,
											   Date DATE,
                                               Car INT,
                                               Customer INT,
                                               Sales_Person INT); 