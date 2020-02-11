INSERT INTO customer 
(customer_id,customer_name, phone, email, address,city, state, zip, country) 
    VALUES (110001, 'Pablo Picasso', '+34 636 17 63 82',	'-',	'Paseo de la Chopera 14', 'Madrid',	'Madrid', '28045', 'ES'), 
    (110002, 'Pablita Picar', '+34 546 17 63 79',	'blita@picar', 'Rua de la Chopy 18', 'Madrid', 'Madrid', '28045', 'ES');
    
    select * from customer;
    
DROP TABLE invoices;

CREATE TABLE `invoices` (
  `inv_id` varchar(30) NOT NULL,
  `date_` datetime NOT NULL,
  `vin_id` varchar(30) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `staff_id` varchar(30) NOT NULL,
  `store_id` varchar(30) NOT NULL,
  PRIMARY KEY (`inv_id`));
  
  INSERT INTO invoices 
(inv_id, date_, vin_id, customer_id, staff_id,store_id) 
    VALUES ('inv_1', '2009-01-01 00:00:00','placa_1',	'110001',	'staff_1', 'store_1'), 
    ('inv_2', '2007-01-01 00:00:00','placa_2',	'110002',	'staff_2', 'store_2');
    
    select * from invoices;
    
    DROP TABLE staff;
    
    CREATE TABLE `staff` (
  `staff_id` varchar(30) NOT NULL,
  `store_id` varchar(30) NOT NULL,
  `name_` char(40) NOT NULL,
  `phone` char(12) NOT NULL,
  `email` char(20) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL,
  `country` char(3) DEFAULT NULL,
  PRIMARY KEY (`staff_id`));
    
    INSERT INTO staff 
(staff_id,store_id, name_, phone, email, address,city, state, zip, country) 
    VALUES ('staff_1', 'store_1', 'José','636176399', 'j@mail.com',	'Paseo de la Chopera 12', 'Madrid',	'Md', '28042', 'ES'), 
    ('staff_2', 'store_2', 'Maria',	'636996382', 'm@mail.com',	'Paseo de la Chopera 19', 'Madrid',	'Md', '28043', 'ES');
    
    select * from staff;
    DROP TABLE store;
    
    CREATE TABLE `store` (
  `store_id` varchar(30) NOT NULL,
  `name_` char(40) NOT NULL,
  `phone` char(19) NOT NULL,
  `email` char(20) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(20) DEFAULT NULL,
  `zip` char(20) DEFAULT NULL,
  `country` char(20) DEFAULT NULL,
  PRIMARY KEY (`store_id`));
  
  INSERT INTO store 
(store_id, name_, phone, email, address,city, state, zip, country) 
    VALUES ('store_1', 'Alameda','636336399', 'alameda@mail.com',	'Paseo de la Chopera 333', 'Madrid',	'Md', '28042', 'ES'), 
    ('store_2', 'Cais do Sodre',	'636886382', 'cais@mail.com',	'Paseo de la Chopera 999', 'Madrid',	'Md', '28043', 'ES');
    
    select * from store;
    
    INSERT INTO the_cars
(vin_id, manufaturer, model, color, price, currency, qty) 
    VALUES ('placa_1', 'BMW', '2009', 'blue', '10000', 'USD', '10'),
    ('placa_2', 'Ford', '2008', 'blue', '9000', 'USD', '12');
    
    select * from the_cars;
    