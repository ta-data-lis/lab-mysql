CREATE TABLE IF NOT EXISTS cars (
carID INT PRIMARY KEY AUTO_INCREMENT,
VIN varchar(20),
manufactory varchar(20),
model varchar(10),
year char(4),
color varchar(10)
);


CREATE TABLE IF NOT EXISTS customers (
customerID INT PRIMARY KEY AUTO_INCREMENT,
c_name varchar(40),
phonenumber varchar(12),
email varchar(20),
adress varchar(40),
city varchar(20),
state char(2),
country varchar(20),
zip char(5)
);

CREATE TABLE IF NOT EXISTS Salesperson (
staffID INT PRIMARY KEY AUTO_INCREMENT,
s_name varchar(40),
store varchar(20)
);

CREATE TABLE IF NOT EXISTS invoice (
invoice_number INT PRIMARY KEY AUTO_INCREMENT,
invoice_date date,
carID INT,
customerID INT,
staffID INT,
FOREIGN KEY (`carID`) REFERENCES `cars`(`carID`),
FOREIGN KEY (`staffID`) REFERENCES `Salesperson`(`staffID`),
FOREIGN KEY (`customerID`) REFERENCES `customers`(`customerID`)
);

DROP TABLE if exists customers;
DROP TABLE if exists invoice;

INSERT INTO `cars` VALUES (NULL , "3K096I98581D",  "Volkswagen","Tiguan",2019,"Blue"), (NULL , "ZM8G7BEUQZ97" , "Peugeot" , "Rifter" , 2019 , "Red"), ( NULL , "RKXVNNIHLVV" , "Ford" , "Fusion" , 2018 , "White" ) , (NULL ,"HKNDGS7CU31" , "Toyota" , "RAV4" , 2018 , "Silver" ), (NULL ,"DAM41UDN3CH" , "Volvo" , "V60" , 2019 , "Gray");
 
 INSERT INTO customers () VALUES ( NULL , "Pablo Picasso" ,"-" , "-" , "Paseo de la Chopera, 14" , "Madrid" , "ES" , "-" , "28045" );

INSERT INTO salesperson () VALUES (NULL, "Petey Cruiser" , "Madrid") , (NULL , "Anna Sthesia" , "Barcelona") , (NULL , "Paul Molive" , "Berlin"), (NULL , "Gail Forcewind" , "Paris");

INSERT INTO invoice () VALUES (NULL , "2019-05-02", "1" , "1", "1");