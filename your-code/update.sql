SELECT ID FROM salespersons WHERE Name = 'Paige Turner';

UPDATE salespersons
SET Store = 'Miami'
WHERE ID = 4;

SELECT *
FROM salespersons;

UPDATE costumers
SET Email = 'ppicasso@gmail.com'
WHERE ID = 0;
UPDATE costumers
SET Email = 'lincoln@us.gov'
WHERE ID = 1;
UPDATE costumers
SET Email = 'hello@napoleon.me'
WHERE ID = 2;

SELECT *
FROM costumers;
