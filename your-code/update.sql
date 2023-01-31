alter table cars_new
modify VIN varchar(52);

alter table customers
modify Phone_number varchar(52);

update customers
set Phone_number = '+34 636 17 63 82'
where customer_id = 10001;

ALTER TABLE cars_new
RENAME COLUMN id TO ID;

ALTER TABLE customers
RENAME COLUMN id TO ID;

ALTER TABLE salespersons
RENAME COLUMN id TO ID;

ALTER TABLE invoices
RENAME COLUMN id TO ID;

ALTER TABLE invoices
RENAME COLUMN Customer TO Costumers_ID;

ALTER TABLE customers
RENAME COLUMN Customer_id TO Costumers_ID;

ALTER TABLE invoices
RENAME COLUMN Car TO Cars_ID;

ALTER TABLE invoices
RENAME COLUMN Salesperson_Staff_id TO Staff_ID;

ALTER TABLE cars_new
RENAME TO Cars;

update salespersons
set Store = 'Miami'
where Staff_id = 5;

update customers
set email = 'ppicasso@gmail.com'
where Customer_id = 10001;

update customers
set email = 'lincoln@us.gov'
where Customer_id = 20001;

update customers
set email = 'hello@napoleon.me'
where Customer_id = 30001;




