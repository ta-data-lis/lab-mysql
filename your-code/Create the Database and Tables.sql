create DATABASE lab_mysql;
Use lab_mysql;
Create TABLE IF NOT EXISTS lab_mysql.Cars(id INT PRIMARY KEY,
										  VIN VARCHAR(52),
                                          Manufacturer VARCHAR(52),
                                          Model VARCHAR(52),
                                          Car_year INT NOT NULL,
                                          Color VARCHAR(52));
Create TABLE IF NOT EXISTS lab_mysql.Costumers(id INT PRIMARY KEY,
										  Customer_ID INT NOT NULL,
                                          Costumer_Name VARCHAR(52),
                                          Phone VARCHAR(32),
                                          Email VARCHAR (52) DEFAULT 'jonhdoe@gmail.com',
                                          Adress VARCHAR (52),
                                          City VARCHAR (52),
                                          State_Province VARCHAR(52),
                                          Country VARCHAR(52),
                                          Postal INT NOT NULL);
Create TABLE IF NOT EXISTS lab_mysql.Salespersons(id INT PRIMARY KEY,
										  Staff_ID INT NOT NULL,
                                          Name VARCHAR(52),
                                          Store VARCHAR(52));
Create TABLE IF NOT EXISTS lab_mysql.Invoices(id INT PRIMARY KEY,
										  Invoice_number INT NOT NULL,
                                          Invoice_Date DATE,
                                          Car INT,
                                          Costumer INT,
                                          Sales_Person INT);
                                          