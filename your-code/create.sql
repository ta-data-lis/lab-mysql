CREATE TABLE `lab_mysql`.`cars` (
  `ID` INT NOT NULL,
  `VIN` VARCHAR(255) NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` INT NULL,
  `COLOR` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`));

CREATE TABLE `lab_mysql`.`Customers` (
  `ID` INT NOT NULL,
  `Customer ID` INT NULL,
  `Name` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NULL,
  `Address` VARCHAR(255) NULL,
  `City` VARCHAR(45) NULL,
  `State/Province` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Postal` INT NULL,
  PRIMARY KEY (`ID`));

ALTER TABLE `lab_mysql`.`Customers` 
ADD COLUMN `Email` VARCHAR(45) NULL AFTER `Phone`;


CREATE TABLE `lab_mysql`.`Salespersons` (
  `ID` INT NOT NULL,
  `Staff ID` INT NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`));

CREATE TABLE `lab_mysql`.`Invoices` (
  `ID` INT NOT NULL,
  `Invoice Number` INT NOT NULL,
  `Date` DATE NOT NULL,
  `Car` INT NOT NULL,
  `Customer` INT NOT NULL,
  `Salesperson` INT NOT NULL,
  PRIMARY KEY (`ID`));





