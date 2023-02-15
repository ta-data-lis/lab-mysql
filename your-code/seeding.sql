update lab_mysql.customers
set Email = 'ppicasso@gmail.com'
where ID = 0; 

SET SQL_SAFE_UPDATES = 0;

update lab_mysql.customers
set Email = 'lincoln@us.gov'
where ID = 1; 

update lab_mysql.customers
set Email = 'hello@napoleon.me'
where ID = 2; 

select * from lab_mysql.salespersons;

update lab_mysql.salespersons
set Store = 'Miami'
where ID = 4;