# Make some updates to the lab_mysql schema

# change Mimia to Miami in salespersons table
UPDATE lab_mysql.salespersons
SET store = "Miami"
WHERE id = 5;

# Add emails for the customers table
UPDATE lab_mysql.customers
SET email = "ppicasso@gmail.com"
WHERE id = 1;

UPDATE lab_mysql.customers
SET email = "lincoln@us.gov"
WHERE id = 2;

UPDATE lab_mysql.customers
SET email = "hello@napoleon.me"
WHERE id = 3;
