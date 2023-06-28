/*Create the (empty) mySQL database*/
SELECT CURRENT_USER();

CREATE DATABASE IF NOT EXISTS lab_mysql;

/*Define the database that will be used in the queries*/
USE lab_mysql;

/*Populate the database with tables*/
CREATE TABLE IF NOT EXISTS Cars(
								ID INT PRIMARY KEY AUTO_INCREMENT, 
								VIN VARCHAR(17) NOT NULL,
								Manufacturer VARCHAR(40) NOT NULL,
								Model VARCHAR(40),
								`Year` YEAR,
								Color VARCHAR(30)
                                );
                                
SELECT * FROM Cars;


CREATE TABLE IF NOT EXISTS Customers(
									 ID INT PRIMARY KEY AUTO_INCREMENT,
									 `Customer ID` INT NOT NULL,
									 `Name` VARCHAR(100) NOT NULL,
									 Phone VARCHAR(20),
									 Email VARCHAR(50),
									 Address VARCHAR(100) NOT NULL,
									 City VARCHAR(50) NOT NULL,
									 `State/Province` VARCHAR(50),
									 Country VARCHAR(50) NOT NULL,
									 Postal VARCHAR(10)
                                     );

SELECT * FROM Customers;


CREATE TABLE IF NOT EXISTS Salespersons(
										ID INT PRIMARY KEY AUTO_INCREMENT,
										`Staff ID` VARCHAR(5) NOT NULL,
										`Name` VARCHAR(100),
										Store VARCHAR(50)
                                        );

SELECT * FROM Salespersons;


CREATE TABLE IF NOT EXISTS Invoices(
									ID INT PRIMARY KEY AUTO_INCREMENT,
									`Invoice Number` INT NOT NULL,
									`Date` DATE NOT NULL,
									Car INT,
									Customer INT,
									`Sales Person` INT,
                                    FOREIGN KEY (Car) REFERENCES Cars(ID),
                                    FOREIGN KEY (Customer) REFERENCES Customers(ID),
                                    FOREIGN KEY (`Sales Person`) REFERENCES Salespersons(ID)
                                    );

SELECT * FROM Invoices;