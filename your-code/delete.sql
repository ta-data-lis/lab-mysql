-- Let's indicate what is the database to be used
USE lab_mysql;

-- Let's check the table Cars before the update
SELECT *
from Cars;

-- Let's delete the requested row
DELETE FROM Cars
Where ID = 4;

-- Let's check the table Cars after the update
SELECT *
from Cars;