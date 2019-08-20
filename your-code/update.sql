#Update store to Miami
SELECT 
    saler_ID, Name, Store
FROM
    lab_mysql.salesperson
WHERE
    Name = "Paige Turner";
    
UPDATE lab_mysql.salesperson 
SET 
    Store = 'Miami'
WHERE
    saler_ID = 4;
    
SELECT 
    saler_ID, Name, Store
FROM
    lab_mysql.salesperson
WHERE
    Name = "Paige Turner";
    
#Update emails
SELECT 
    cust_ID, Name, Email
FROM
    lab_mysql.customers
WHERE
    Name = "Pablo Picasso" or
    Name = "Abraham Lincoln" or
    Name = "Napoléon Bonaparte";
    
UPDATE lab_mysql.customers
SET Email = CASE cust_ID
    WHEN 0 then 'ppicasso@gmail.com'
    WHEN 1 then 'lincoln@us.gov'
    WHEN 2 then 'hello@napoleon.me'
	END
	WHERE cust_ID IN (0,1,2)
;
    
SELECT 
    cust_ID, Name, Email
FROM
    lab_mysql.customers
WHERE
    Name = "Pablo Picasso" or
    Name = "Abraham Lincoln" or
    Name = "Napoléon Bonaparte";
    