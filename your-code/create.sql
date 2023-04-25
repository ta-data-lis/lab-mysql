# Creating the database

CREATE DATABASE IF NOT EXISTS lab_mysql;

# Defining the database to be used

USE lab_mysql;

# Creating tables

CREATE TABLE IF NOT EXISTS lab_mysql.customers(id INT PRIMARY KEY,
											customer_id INT,
											name VARCHAR(100),
											phone VARCHAR(20),
                                            email VARCHAR(50),
                                            address VARCHAR(100),
                                            city VARCHAR(50),
                                            state_province VARCHAR(50),
                                            country VARCHAR(50),
											postal VARCHAR(20));

CREATE TABLE IF NOT EXISTS lab_mysql.invoices(id INT PRIMARY KEY,
											invoice_number INT,
											date VARCHAR(10),
											car INT,
                                            customer INT,
                                            sales_person INT);
                                            
CREATE TABLE IF NOT EXISTS lab_mysql.cars(id INT PRIMARY KEY,
											vin VARCHAR(20),
											manufacturer VARCHAR(20),
                                            model VARCHAR(20),
                                            year VARCHAR(4),
                                            color VARCHAR(20));                                          
                                            
CREATE TABLE IF NOT EXISTS lab_mysql.salespersons(id INT PRIMARY KEY,
												staff_id VARCHAR(10),
												name VARCHAR(100),
												store VARCHAR(50));
                                            