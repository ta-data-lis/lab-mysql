CREATE TABLE `invoices` (
    `invoice_no` int  NOT NULL ,
    `date` VARCHAR(100)  NOT NULL ,
    `manufacturar` varchar(100)  NOT NULL ,
    `c_name` varchar(250)  NOT NULL ,
    `s_name` int  NOT NULL ,
    PRIMARY KEY (
        `invoice_no`
    )
);

CREATE TABLE `Sales_persons` (
    `Staff_ID` int  NOT NULL ,
    `staff_name` varchar(100)  NOT NULL ,
    `store` varchar(100)  NOT NULL ,
    PRIMARY KEY (
        `Staff_ID`
    )
);

CREATE TABLE `Customers` (
    `Customer_Id` int  NOT NULL ,
    `C_name` varchar(200)  NOT NULL ,
    `phone_no` varchar(100)  NOT NULL ,
    `email` varchar(100)  NOT NULL ,
    `address` varchar(250)  NOT NULL ,
    `city` varchar(100)  NOT NULL ,
    `state` varchar(100)  NOT NULL ,
    `country` varchar(100)  NOT NULL ,
    `zip_code` int  NOT NULL ,
    PRIMARY KEY (
        `Customer_Id`
    )
);


CREATE TABLE `Cars` (
    `Car_ID_Number` int  NOT NULL ,
    `VIN` varchar(150)  NOT NULL ,
    `manufacturer` varchar(00)  NOT NULL ,
    `model` varchar(100)  NOT NULL ,
    `year` int  NOT NULL ,
    `color` varchar(50)  NOT NULL ,
    PRIMARY KEY (
        `Car_ID_Number`,`VIN`
    )
);

ALTER TABLE `invoices` ADD CONSTRAINT `fk_invoices_manufacturar` FOREIGN KEY(`manufacturar`)
REFERENCES `Cars` (`manufacturer`);

ALTER TABLE `invoices` ADD CONSTRAINT `fk_invoices_c_name` FOREIGN KEY(`c_name`)
REFERENCES `Customers` (`C_name`);

ALTER TABLE `Sales_persons` ADD CONSTRAINT `fk_Sales_persons_staff_name` FOREIGN KEY(`staff_name`)
REFERENCES `invoices` (`s_name`);

