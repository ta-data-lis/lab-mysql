## UPDATING DETAILS ##

SELECT * FROM lab_mysql.salesperson;

UPDATE lab_mysql.salesperson
SET store = 'Miami' /*correcting the store name*/
WHERE id = 5;


SELECT * FROM lab_mysql.customers;

UPDATE lab_mysql.customers
SET email = 'ppicasso@gmail.com' /*updating email address*/
WHERE id = 1;

UPDATE lab_mysql.customers
SET email = 'lincoln@us.gov' /*updating email address*/
WHERE id = 2;

UPDATE lab_mysql.customers
SET email = 'hello@napoleon.me' /*updating email address*/
WHERE id = 3;