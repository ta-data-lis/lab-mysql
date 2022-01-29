------------------------------------
-- Change database context
------------------------------------
USE lab_mysql;
------------------------------------
-- Update salespersons table
------------------------------------
UPDATE salespersons
SET `store` = 'Miami'
WHERE `name` = 'Paige Turner';
------------------------------------
-- Update customers table
------------------------------------
UPDATE customers
SET `email` = 'ppicasso@gmail.com'
WHERE `name` = 'Pablo Picasso';
------------------------------------
UPDATE customers
SET `email` = 'lincoln@us.gov'
WHERE `name` = 'Abraham Lincoln';
------------------------------------
UPDATE customers
SET `email` = 'hello@napoleon.me'
WHERE `name` = 'Napoléon Bonaparte';
------------------------------------