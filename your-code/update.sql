use lab_mysql;
select * from customers;
select * from salesperson;

UPDATE customers
SET email= 'johnlong@gmail.com'
WHERE cust_id='PAR20004352';
UPDATE customers
SET email= 'criscurta@gmail.com'
WHERE cust_id='LIS20004453';
UPDATE customers
SET email= 'ghiguain@yahoo.com'
WHERE cust_id='MAD20004653';
UPDATE salesperson
SET store= 'Paris'
WHERE staff_id='0002121';
