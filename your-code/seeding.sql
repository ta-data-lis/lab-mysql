use lab_mysql;
INSERT INTO cars (VIN, manufacturer, model, year, colour) 
    VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue');
  INSERT INTO customers (Customer_ID , Name , Phone , Email , Address , City , State_Province , Country , Postal) 
    VALUES ('10001' , 'Pablo Picasso', '636 17 63 82' , '-' , 'Paseo de la Chopera, 14' , 'Madrid' , 'Madrid', 'Spain' , '28045');
    INSERT INTO sales_persons (Staff_ID, Name, Store) 
    VALUES ('00001', 'Petey Cruiser' , 'Madrid');
    INSERT INTO invoices (invoice_number, date, car_id, id_cust,id_salesper) 
    VALUES ('852399038', '2018-08-22', 2 , 1 , 3);