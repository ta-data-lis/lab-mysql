USE lab_mysql;

LOCK TABLES Salespersons WRITE;
UPDATE Salespersons
SET Store = 'Miami'
WHERE Store = 'Mimia';
UNLOCK TABLES;

SELECT * FROM Salespersons;

LOCK TABLES Customers WRITE;

UPDATE Customers
SET email = 'ppicasso@gmail.com'
WHERE Name = 'Pablo Picasso';

UPDATE Customers
SET email = 'lincoln@us.gov'
WHERE Name = 'Abraham Lincoln';

UPDATE Customers
SET email = 'hello@napoleon.me'
WHERE Name = 'Napoléon Bonaparte';

UNLOCK TABLES;

SELECT *
FROM Customers;