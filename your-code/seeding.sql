SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";


INSERT INTO lab3.cars(vin,manufacturer,model,`year`,color)
VALUES ("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver");


INSERT INTO lab3.customers(customer_id,`name` ,phone_number,email,address,city,state_province,country,postal_code)
VALUES ("10001", "Pablo Picasso", "+34 636 17 63 82", '-', "Paseo de la Chopera, 14","Madrid","Madrid" ,"Spain","280452");



INSERT INTO lab3.salespersons(staff_id, store)  -- I forgot the 'name' column when creating but can't drop it because of FK constraints
VALUES ("00001", "Madrid");


INSERT INTO lab3.invoices(invoice_number, `date`, car, customer, salesperson) 
VALUES ("852399038", "22-08-2018", "1", "1", "1");


