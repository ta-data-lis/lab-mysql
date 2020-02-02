USE lab_mysql;

UPDATE salesperson
SET sa_store = 'Miami'
WHERE sa_store = 'Mimia';

UPDATE customers 
SET cu_email = 'ppicasso@gmail.com' 
WHERE cu_name = 'Pablo Picasso';

UPDATE customers
SET cu_email = 'lincoln@us.gov'
WHERE cu_name = 'Abraham Lincoln';

UPDATE customers
SET cu_email = 'hello@napoleon.me'
WHERE cu_name = 'Napoléon Bonaparte';
