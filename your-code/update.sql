/*Updating Salespersons table - Paige store*/
UPDATE salespersons
SET sp_store = 'Miami'
WHERE sp_id = '4';

/*Updating Salespersons table - Emails from costumers*/
UPDATE customers
SET ct_email = 'ppicasso@gmail.com'
WHERE ct_id = '0';

UPDATE customers
SET ct_email = 'lincoln@us.gov'
WHERE ct_id = '1';

UPDATE customers
SET ct_email = 'hello@napoleon.me'
WHERE ct_id = '2';

