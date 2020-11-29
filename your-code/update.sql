USE lab_mysql;

UPDATE lab_mysql.sales_person
SET store = "Miami"
WHERE seller_id = 00005;

SELECT *
FROM lab_mysql.sales_person

UPDATE lab_mysql.customers
SET email = "ppicasso@gmail.com"
WHERE customer_id = 10001;

UPDATE lab_mysql.customers
SET email = "lincoln@us.gov"
WHERE customer_id = 20001;

UPDATE lab_mysql.customers
SET email = "hello@napoleon.me"
WHERE customer_id = 30001;

SELECT *
FROM lab_mysql.customers
