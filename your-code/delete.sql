------------------------------------
-- Change database context
------------------------------------
USE lab_mysql;
------------------------------------
-- Delete duplicate from cars table
------------------------------------
DELETE FROM cars
WHERE `id` = 4