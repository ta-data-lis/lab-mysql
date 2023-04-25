# Updating tables

UPDATE lab_mysql.salespersons
SET store = 'Miami'
WHERE id = 4;

UPDATE lab_mysql.customers
SET email = 'ppicasso@gmail.com'
WHERE id = 0;

UPDATE lab_mysql.customers
SET email = 'lincoln@us.gov'
WHERE id = 1;

UPDATE lab_mysql.customers
SET email = 'hello@napoleon.me'
WHERE id = 2;