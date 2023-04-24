SET SQL_SAFE_UPDATES = 0;

UPDATE lab_mysql.staff
SET store = 'Miami'
WHERE staff_name = 'Paige Turner';

SELECT * 
FROM lab_mysql.staff;

UPDATE lab_mysql.customers
SET email = 'ppicasso@gmail.com'
WHERE customer_id = 10001;

UPDATE lab_mysql.customers
SET email = 'lincoln@us.gov'
WHERE customer_id = 10002;

UPDATE lab_mysql.customers
SET email = 'hello@napoleon.me'
WHERE customer_id = 10003;


SELECT * 
FROM lab_mysql.customers;