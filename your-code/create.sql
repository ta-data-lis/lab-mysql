
DROP TABLE IF EXISTS `Cars`;
CREATE TABLE `Cars` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `VIN` varchar(20) NOT NULL,
  `Manufacturer` varchar(40) NOT NULL,
  `Model` varchar(20) NOT NULL,
  `Year` char(4) NOT NULL,
  `Color` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

DROP TABLE IF EXISTS `Customers`;
CREATE TABLE `Customers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Customer_ID` varchar(20) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Phone` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State/Province` varchar(30) NOT NULL,
  `Country` varchar(30) NOT NULL,
  `Postal` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `Salespersons`;
CREATE TABLE `Salespersons` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Staff_ID` varchar(5) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Store` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `Invoices`;
CREATE TABLE `Invoices` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Invoice_Number` varchar(20) NOT NULL,
  `Date_` varchar(40) NOT NULL,
  `Car` varchar(20) NOT NULL,
  `Customer` varchar(40) NOT NULL,
  `Sales Person` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

