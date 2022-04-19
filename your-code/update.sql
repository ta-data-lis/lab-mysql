/* LAB 3 - MYSQL ACTIONS
DELIVERABLE 3 (BONUS) - UPDATE.SQL */

USE lab_mysql;

/*First, we update 'Mimia' to 'Miami' in the salespersons table
to fix the mispelled value*/

UPDATE salespersons
SET store = 'Miami'
WHERE staff_id = 00005;

/*Second, we add the missing emails for the customers*/

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE customer_id = 10001;

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE customer_id = 20001;

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE customer_id = 30001;