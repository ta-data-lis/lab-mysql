/* LAB 4 - MYSQL ACTIONS
DELIVERABLE 4 (BONUS) - DELETE.SQL */

/*Remove duplicated car entry with ID4*/

/*Note: in my query is car ID5 instead of 4, because I had to start the
autoincrement for the PK in 1 instead of 0 
(the script to set it to 0 returned an error) */

DELETE FROM cars
WHERE id = 5;

