USE lab_mysql;

/*Deactivate safe updates on mySQL*/
SET SQL_SAFE_UPDATES = 0;

/*Update*/
SELECT * FROM Salespersons;

UPDATE Salespersons
SET store = 'Miami'
WHERE (ID = 4);

SELECT * FROM Customers;

UPDATE Customers
SET Email = 'ppicasso@gmail.com'
WHERE (ID = 0);

UPDATE Customers
SET Email = 'lincoln@us.gov'
WHERE (ID = 1);

UPDATE Customers
SET Email = 'hello@napoleon.me'
WHERE (ID = 2);


/*Activate safe updates on mySQL*/
SET SQL_SAFE_UPDATES = 1;