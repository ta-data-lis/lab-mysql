--  in the Salespersons table, you mistakenly spelled Miami as Mimia for Paige Turner --
UPDATE salesperson
SET store= 'Miami'
WHERE ID = 5;

SELECT * FROM lab_mysql.salesperson;

-- new email addresses 
SET SQL_SAFE_UPDATES=0;

UPDATE costumers
SET email= 'ppicasso@gmail.com'
WHERE first_name = 'Pablo';

UPDATE costumers
SET email= 'lincoln@us.gov'
WHERE first_name = 'Abraham';

UPDATE costumers
SET email= 'hello@napoleon.me'
WHERE first_name = 'Napoléon';

SELECT * FROM lab_mysql.costumers;