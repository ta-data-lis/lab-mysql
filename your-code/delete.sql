USE lab_mysql;

/* delete duplicated car entry for VIN DAM41UDN3CHU2WVF6 at car ID #4 */

DELETE FROM `cars` WHERE `cars_ID`= 4;