USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;

UPDATE lab_mysql.customers
SET email = "ppicasso@gmail.com"
WHERE name = "Pablo Picasso";
