SELECT *
FROM lab_mysql.salespersons;

UPDATE lab_mysql.salespersons
SET store = 'Miami' WHERE (`id_salesperson` = 5);

SELECT *
FROM lab_mysql.salespersons;


SELECT *
FROM lab_mysql.customers;

UPDATE lab_mysql.customers
SET `email` = 'ppicasso@gmail.com' WHERE (`id_customer` = '10001');

UPDATE lab_mysql.customers
SET `email` = 'lincoln@us.gov' WHERE (`id_customer` = '20001');

UPDATE lab_mysql.customers
SET `email` = 'hello@napoleon.me' WHERE (`id_customer` = '30001');

SELECT *
FROM lab_mysql.customers;