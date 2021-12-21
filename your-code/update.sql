-- Let's indicate what is the database to be used
USE lab_mysql;

-- Let's check the table Salespersons before the update
SELECT *
FROM Salespersons;

-- Let's update the table Salespersons as requested
 UPDATE /*+ NO_MERGE(S) */ Salespersons,
       (SELECT ID
       FROM Salespersons
       WHERE Name = 'Paige Turner') AS S
SET Salespersons.Store = 'Miami'
WHERE Salespersons.ID = S.ID;

-- Let's check the table Salespersons after the update
SELECT *
FROM Salespersons;

-- Let's check the table Customers before the updates
SELECT *
FROM Customers;

-- Let's update the table Salespersons as requested
UPDATE /*+ NO_MERGE(S) */ Customers,
       (SELECT ID
       FROM Customers
       WHERE Name = 'Pablo Picasso') AS S
SET Customers.Email = 'ppicasso@gmail.com'
WHERE Customers.ID = S.ID;

UPDATE /*+ NO_MERGE(S) */ Customers,
       (SELECT ID
       FROM Customers
       WHERE Name = 'Abraham Lincoln') AS S
SET Customers.Email = 'lincoln@us.gov'
WHERE Customers.ID = S.ID;

UPDATE /*+ NO_MERGE(S) */ Customers,
       (SELECT ID
       FROM Customers
       WHERE Name = 'Napoléon Bonaparte') AS S
SET Customers.Email = 'hello@napoleon.me'
WHERE Customers.ID = S.ID;

-- Let's check the table Customers after the updates
SELECT *
FROM Customers;