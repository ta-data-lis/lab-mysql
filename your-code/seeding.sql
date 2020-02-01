SELECT * FROM cars;
INSERT INTO cars (VIN, manufacturer, model, color, production_year)
VALUES ("3K096I98581DHSNUP","Volkswagen","Tiguan","Blue", 2019),("ZM8G7BEUQZ97IH46V","Peugeot","Rifter","Red", 2019),
("RKXVNNIHLVVZOUB4M","Ford","Fusion","White", 2018),("HKNDGS7CU31E9Z7JW","Toyota","RAV4","Silver", 2018),
("DAM41UDN3CHU2WVF6","Volvo","V60","Gray", 2019), ("DAM41UDN3CHU2WVF6","Volvo","V60 Cross Country","Gray", 2019);

INSERT INTO customers (customer_name, phone, email, address, city, state, country, postal_code) VALUES
('Pablo Picasso','+34636176382',NULL,'Paseo de la Chopera 14','Madrid','Madrid','Spain','28045'),
('Abraham Lincoln','+13059077086',NULL,'120 SW 8th St','Miami','Florida','United States','33130'),
('Napoléon Bonaparte','+33179754000',NULL,'40 Rue du Colisée','Paris','Île-de-France','France','75008');

INSERT INTO staff (staff_name, store) VALUES
('Petey Cruiser','Madrid'), ('Anna Sthesia','Barcelona'), ('Paul Molive','Berlin'), ('Gail Forcewind','Paris'), ('Paige Turner','Mimia'), 
('Bob Frapples','Mexico City'), ('Walter Melon','Amsterdam'), ('Shonda Leer','São Paulo');

INSERT INTO invoices (invoice_number, invoice_date, car_id, cust_id, staff_id) VALUES
(852399038,'2018-08-22',1,1,3), (731166526,'2018-12-31',3,1,5), (271135104,'2019-01-22',2,2,7);


