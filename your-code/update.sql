UPDATE lab3.salesperson
SET store = 'Miami' /*correcting the email address*/
WHERE salesperson_id = 4;

UPDATE lab3.customer
SET email = 'ppicasso@gmail.com' /*correcting the email address*/
WHERE customer_id = 0;

UPDATE lab3.customer
SET email = 'lincoln@us.gov' /*correcting the email address*/
WHERE customer_id = 1;

UPDATE lab3.customer
SET email = 'hello@napoleon.me' /*correcting the email address*/
WHERE customer_id = 2;
