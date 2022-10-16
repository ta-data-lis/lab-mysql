CREATE TABLE IF NOT EXISTS
lab_mysql.cars(
id INT PRIMARY KEY,
car_id VARCHAR(20) ,
manufacturer VARCHAR(20),
model VARCHAR(20),
car_year INT,
colour VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS
lab_mysql.invoices(
id INT PRIMARY KEY,
invoice_id INT ,
in_date VARCHAR (20),
car_id VARCHAR(20),
costumer_id INT,
staff_id INT
);
DROP TABLE lab_mysql.cars;
DROP TABLE lab_mysql.invoices;
DROP TABLE lab_mysql.costumers;
DROP TABLE lab_mysql.salesperson;

CREATE TABLE IF NOT EXISTS
lab_mysql.costumers(
id INT PRIMARY KEY,
costumer_id INT,
cost_name VARCHAR(40),
phone_number VARCHAR(20),
email VARCHAR(40),
address VARCHAR(40),
city VARCHAR (20),
province VARCHAR(20),
country VARCHAR(20),
postal_code VARCHAR(20)
);
/**DROP TABLE lab_mysql.costumers;*/

CREATE TABLE IF NOT EXISTS
lab_mysql.salesperson(
id INT PRIMARY KEY,
staff_id INT,
staff_name VARCHAR(40),
store VARCHAR(40)
);