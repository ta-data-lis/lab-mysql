CREATE TABLE IF NOT EXISTS cars(
car_id INT,
manufacturer VARCHAR (20) NOT NULL,
model VARCHAR (20) NOT NULL,
n_year DATE,
color VARCHAR (20) NOT NULL,
PRIMARY KEY (car_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS customers (
cust_id INT,
cust_name VARCHAR (20) NOT NULL,
phone VARCHAR (20) NOT NULL,
email VARCHAR (20) DEFAULT "-",
country VARCHAR (20) NOT NULL,
PRIMARY KEY (cust_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS salespersons (
staff_id INT,
staff_name VARCHAR (20) NOT NULL,
store VARCHAR (20) NOT NULL,
PRIMARY KEY (staff_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS invoices (
inv_id INT,
i_date DATE,
car_id INT,
cust_id INT,
staff_id INT,
PRIMARY KEY (inv_id),
FOREIGN KEY (car_id) REFERENCES cars (car_id),
FOREIGN KEY (cust_id) REFERENCES customers (cust_id),
FOREIGN KEY (staff_id) REFERENCES salespersons (staff_id)
);

INSERT INTO cars (car_id, manufacturer, model, n_year, color)
VALUES (111, "Volkswagen", "Tiguan", "2019-05-06", "Blue"),
(222, "Peugeot", "Rifter", "2019-07-07", "Red"),
(333, "Ford", "Fusion", "2018-10-10", "White"),
(444, "Toyota", "RAV4", "2019-08-01", "Silver"),
(555, "Volvo", "V60", "2019-12-20", "Gray"),
(666, "Volvo", "V60 Cross", "2018-05-06", "Gray");

INSERT INTO customers (cust_id, cust_name, phone, email, country)
VALUES(10001, "Pablo Picasso", "+34636176382", "-", "Spain"),
(20001, "Abraham Lincolno", "+35556666382", "lincoln@gmail.com", "Miami"),
(30001, "Napoléon Bonaparte", "+22220000111", "-", "Paris");

INSERT INTO salespersons (staff_id, staff_name, store)
VALUES (001, "Petey Cruiser", "Madrid"),
(002, "Anna Sthesia", "Barcelona"),
(003, "Paul Molive", "Berlin"),
(004, "Gail Forcewind", "Paris"),
(005, "Paige Turner", "Miami"),
(006, "Bob Frapples", "Mexico City"),
(007, "Walter Melon", "Amsterdam"),
(008, "Shonda Leer", "São Paulo");

INSERT INTO invoices (inv_id, i_date, car_id, cust_id, staff_id)
VALUES (852399038, "2018-08-22", 111, 20001, 003),
(731166526, "2018-12-31", 333, 10001, 005),
(271135104, "2019-01-22", 222, 30001, 007);

SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM invoices;

DROP TABLE cars;
DROP TABLE customers;
DROP TABLE salespersons;
DROP TABLE invoices;
DROP DATABASE Cars;

CREATE DATABASE Cars;
USE Cars;