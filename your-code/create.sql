USE lab_mysql;

CREATE TABLE car (VIN INT, manufacturer VARCHAR(20),
       model VARCHAR(20), year_car timestamp, color VARCHAR(20));
       
CREATE TABLE invoices (invoice_number INT, invoice_date timestamp,
       model VARCHAR(20), year_car timestamp, VIN INT, costumer_id int, staff_id INT);

CREATE TABLE salesperson (staff_number INT AUTO_INCREMENT PRIMARY KEY, staff_id INT,
       staff_name VARCHAR(20), store VARCHAR(20));
                            
CREATE TABLE costumer (costumer_number INT AUTO_INCREMENT PRIMARY KEY, costumer_id INT,
							name VARCHAR(20), phone_number VARCHAR(20), email VARCHAR(20) , address VARCHAR(20), city VARCHAR(20), state VARCHAR(20), country VARCHAR(20), ZIP VARCHAR(20));

ALTER TABLE car
ADD CONSTRAINT primary_car_key PRIMARY KEY (VIN);


ALTER TABLE invoices
ADD CONSTRAINT primary_invoices_key PRIMARY KEY (invoice_number);

ALTER TABLE invoices
ADD CONSTRAINT foreign_invoices_key FOREIGN KEY (car_id)
REFERENCES car (ID);

CREATE INDEX idx_costumer_id
ON costumer (costumer_id);

ALTER TABLE invoices
ADD CONSTRAINT foreign_invoices_key4 FOREIGN KEY (costumer_id)
REFERENCES costumer (costumer_id);

CREATE INDEX idx_staff_id
ON salesperson (staff_id);

ALTER TABLE invoices
ADD CONSTRAINT foreign_invoices_key5 FOREIGN KEY (staff_id)
REFERENCES salesperson (staff_id);

ALTER TABLE car
ADD COLUMN ID INT AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE invoices
ADD COLUMN ID INT AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE car
DROP CONSTRAINT primary_car_key ;

ALTER TABLE car
ADD COLUMN ID INT AUTO_INCREMENT PRIMARY KEY;

