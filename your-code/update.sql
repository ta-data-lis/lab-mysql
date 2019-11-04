## Bonus Challenge - Updating

USE lab_mysql;

UPDATE lab_mysql.salesperson
SET store = 'Miami'
WHERE staff_name = 'Paige Turner';

SELECT * FROM salesperson;

UPDATE lab_mysql.customers
SET email = (CASE WHEN customer_name = 'Pablo Picasso' THEN 'ppicasso@gmail.com'
				WHEN customer_name = 'Abraham Lincoln' THEN 'lincoln@us.gov'
				WHEN customer_name = 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
				END);
                
