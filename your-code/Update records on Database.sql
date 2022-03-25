USE lab_mysql;
Update lab_mysql.costumers
SET email = 'ppicasso@gmail.com'
WHERE id = 0;
Update lab_mysql.costumers
SET email = 'lincoln@us.gov'
WHERE id = 1;
Update lab_mysql.costumers
SET email = 'hello@napoleon.me'
WHERE id = 2;

SELECT * FROM lab_mysql.costumers;