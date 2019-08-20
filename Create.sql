USE lab_mysql;

CREATE TABLE CARS (id INT PRIMARY KEY AUTO_INCREMENT, CAR_ID INT, MANUFACTURER VARCHAR(20), MODEL VARCHAR(20), YEAR CHAR(4), COLOR VARCHAR(10), DATE_SOLD DATE);

CREATE TABLE CUSTOMER (id INT PRIMARY KEY AUTO_INCREMENT, CUSTOMER_ID INT, NAME VARCHAR(30), ADDRESS VARCHAR(40), PHONE VARCHAR(20), CAR_ID INT, DATE_SOLD DATE);

CREATE TABLE SALESPERSON (id INT PRIMARY KEY AUTO_INCREMENT, STAFF_ID INT, NAME VARCHAR(30), ADDRESS VARCHAR(40), OUTLET VARCHAR(20));

CREATE TABLE INVOICE (id INT PRIMARY KEY AUTO_INCREMENT, INVOICE_NR INT, INV_DATE DATE, CAR_ID INT, CUSTOMER_ID INT, STAFF_ID INT);

