SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
SET SQL_SAFE_UPDATES = 0;
USE lab_mysql;

/* I did not upload it because I saw it was duplicate in the first exercise.
Setting it up as primary (which was done because vins are unique) made
an error highlighting it was duplicate to pop-up.
Regardless, this is the how I would delete a specific entry: */

DELETE FROM Cars
WHERE car_vin = 'DAM41UDN3CHU2WVF6';
