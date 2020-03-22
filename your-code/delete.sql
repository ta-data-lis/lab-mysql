-- delete duped VIN with DAM41UDN3CHU2WVF6 --

-- check output
SELECT * FROM lab_mysql.cars;

DELETE FROM cars WHERE `ID` = 6;


SELECT * FROM lab_mysql.cars;
