SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
SET SQL_SAFE_UPDATES = 0;
USE lab_mysql;

UPDATE Customers
SET cu_email = 'ppicasso@gmail.com'
WHERE cu_name = 'Pablo Picasso';

UPDATE Customers
SET cu_email = 'lincoln@us.gov'
WHERE cu_name = 'Abraham Lincoln';

UPDATE Customers
SET cu_email = 'hello@napoleon.me'
WHERE cu_name = 'Napoléon Bonaparte';