/*BONUS

1 - UPDATE MIMIA FOR MIAMI
2- CUSTOMERS EMAIL*/

SELECT *
FROM mysql_actions.salesperson;

UPDATE mysql_actions.salesperson
SET store = "Miami"
WHERE s_id = 5;

SELECT *
FROM mysql_actions.customer;

UPDATE mysql_actions.customer
SET email = "ppicasso@gmail.com"
WHERE c_id = 1;

UPDATE mysql_actions.customer
SET email = "lincoln@us.gov"
WHERE c_id = 2;

UPDATE mysql_actions.customer
SET email = "hello@napoleon.me"
WHERE c_id = 3;
