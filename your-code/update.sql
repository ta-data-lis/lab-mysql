USE lab_mysql;

SELECT * FROM salespersons
WHERE name = 'Paige Turner';

UPDATE salespersons 
SET store = 'Miami'
WHERE id = 4;

SELECT id FROM customers
WHERE name = 'Pablo Picasso';

UPDATE customers 
SET email = 'ppicasso@gmail.com'
WHERE id = 0;


SELECT id FROM customers
WHERE name = 'Abraham Lincoln';

UPDATE customers 
SET email = 'lincoln@us.gov'
WHERE id = 1;



SELECT id FROM customers
WHERE name = 'Napoléon Bonaparte';

UPDATE customers 
SET email = 'hello@napoleon.me'
WHERE id = 2;

-- QUES - Testing to use the query instead of hard coding the id. Not working, do you know if it is possible?

-- TEST 1
-- UPDATE customers 
-- SET email = 'ppicasso@gmail.com'
-- WHERE id = (SELECT id FROM customers
-- WHERE name = 'Pablo Picasso') ;

-- TEST 2
-- UPDATE customers AS destination,(SELECT id FROM customers WHERE name = 'Pablo Picasso') AS source_id
-- SET destination.email = 'ppicasso@gmail.com'
-- where id = source_id;


