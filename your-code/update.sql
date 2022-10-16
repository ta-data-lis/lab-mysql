UPDATE lab_mysql.salespersons
SET store = "Miami"
WHERE salesper_id = 5;

UPDATE lab_mysql.costumers
SET email = "ppicasso@gmail.com"
WHERE cost_ID = 10001;

UPDATE lab_mysql.costumers
SET email = "lincoln@us.gov"
WHERE cost_ID = 20001;

UPDATE lab_mysql.costumers
SET email = "hello@napoleon.me"
WHERE cost_ID = 30001;

SELECT cost_ID,cost_name,email
FROM lab_mysql.costumers;