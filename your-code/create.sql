CREATE DATABASE car_company;

CREATE TABLE IF NOT EXISTS car_company.car(

										vin CHAR(17) NOT NULL PRIMARY KEY ,
										manufacturer VARCHAR(52)NOT NULL,
                                        model VARCHAR(50)NOT NULL,
                                        car_year DATE NOT NULL,
                                        color VARCHAR(30) NOT NULL,
                                        car_index int NOT NULL);
                                        
CREATE TABLE IF NOT EXISTS car_company.costumers(

										costumer_id INT(12) NOT NULL PRIMARY KEY AUTO_INCREMENT,
										cost_name CHAR(72),
                                        phone VARCHAR(32),
                                        email VARCHAR(52),
                                        address VARCHAR(52),
                                        city CHAR(52),
                                        state CHAR(52),
                                        country CHAR(52),
                                        zip_postal CHAR(10),
										costum_index INT);
                                        
CREATE TABLE IF NOT EXISTS car_company.sales_person(

										staff_id INT(12) NOT NULL PRIMARY KEY AUTO_INCREMENT,
										staff_name VARCHAR(72),
                                        store_name VARCHAR(72),
                                        person_index INT);
                                        
CREATE TABLE IF NOT EXISTS car_company.invoice(

										invoice_num INT(12) NOT NULL PRIMARY KEY ,
                                        vin CHAR(17) NOT NULL,
                                        costumer_id INT(12) NOT NULL,
										staff_id INT(12) NOT NULL,
                                        inv_date DATE,
                                        price FLOAT,
                                        inv_index INT
                                        );
                                        