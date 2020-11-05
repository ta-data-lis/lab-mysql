USE `lab_mysql`;
SELECT *
FROM `Salespersons`;
UPDATE Salespersons
SET `Store ID`= "Miami"
WHERE ID = 4;

SELECT *
FROM `Costumers`;
UPDATE `Costumers`
SET `email`= "ppicasso@gmail.com"
WHERE ID = 0;
UPDATE `Costumers`
SET `email`= "lincoln@us.gov"
WHERE ID = 1;
UPDATE `Costumers`
SET `email`= "hello@napoleon.me"
WHERE ID = 2;