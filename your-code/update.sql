USE lab_mysql;

/*Updating Salespersons table - Miami*/
UPDATE salesperson
SET Store = 'Miami'
WHERE sales_id = '4';

/*Update emails in Customers table */
UPDATE customers
SET Email = 'ppicasso@gmail.com'
WHERE cust_id = '0';

UPDATE customers
SET Email = 'lincoln@us.gov'
WHERE cust_id = '1';

UPDATE customers
SET Email = 'hello@napoleon.me'
WHERE cust_id = '2';