USE lab_mysql;

DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
	`VIN` varchar(20) NOT NULL,
    `manufacturer` varchar(20) NOT NULL,
    `model` varchar(20) NOT NULL,
    `year` year NOT NULL,
    `color` varchar(20),
    `id`  int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (VIN)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

SELECT * from cars

CREATE TABLE `customers` (
	