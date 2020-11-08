USE cars_company;

CREATE TABLE `cars` (
  `vin` varchar(40) NOT NULL,
  `manufacturer` varchar(40) NOT NULL,
  `model` varchar(20) NOT NULL,
  `year` char(4) NOT NULL,
  `color` varchar(130) NOT NULL,
  PRIMARY KEY (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `customers` (
  `idcustomer` varchar(10) NOT NULL,
  `customer_name` varchar(40) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` char(40) DEFAULT NULL,
  `address` char(40) DEFAULT NULL,
  `city` char(30) DEFAULT NULL,
  `state_province` char(30) DEFAULT NULL,
  `country` char(30) DEFAULT NULL,
  `zip_code` char(8) DEFAULT NULL,
  PRIMARY KEY (`idcustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `invoicing` (
  `invnumber` varchar(20) NOT NULL,
  `date` varchar(10) NOT NULL,
  `vin` varchar(20) NOT NULL,
  `idcustomer` varchar(20) NOT NULL,
  `staffid` varchar(20) NOT NULL,
  PRIMARY KEY (`invnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `salesstaff` (
  `staffid` varchar(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `storeid` varchar(20) NOT NULL,
  PRIMARY KEY (`staffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cars`;
