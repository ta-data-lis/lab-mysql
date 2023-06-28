USE lab_mysql;

/*To find duplicate entries*/

SELECT VIN, COUNT(*) as count
FROM Cars
GROUP BY VIN
HAVING count > 1;


/*Delete*/
SET SQL_SAFE_UPDATES = 0;

SELECT * FROM Cars;

DELETE FROM Cars
WHERE (ID = 4);

SET SQL_SAFE_UPDATES = 1;