SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

INSERT INTO lab_mysql.car (VIN, manufacturer, model, year_car, color)
Values ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue' ),
		('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red' ),
        ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White' ),
        ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018','Silver'  ),
        ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray' ),
        ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray' );

INSERT INTO lab_mysql.costumers (costumer_id, name, phone_number, address, city,state,country,ZIP)
Values ( 10001 , 'Pablo Picasso', '+34 636 17 63 82', 'Paseo de la Chopera, 14', 'Madrid','Madrid','Spain', "28045" );

INSERT INTO lab_mysql.costumers (costumer_id, name, phone_number, address, city,state,country,ZIP)
Values ( 20001 , 'Abraham Lincoln', '+1 305 907 7086', '120 SW 8th St', 'Miami','Florida','United States', "33130 " ),
( 30001 , 'Napoléon Bonaparte', '+33 1 79 75 40 00', '40 Rue du Colisée', 'Paris','Île-de-France','France', "75008 " );

INSERT INTO lab_mysql.invoices (invoice_number, invoice_date, car_id, costumer_id, staff_id)
Values ('852399038', 22-08-2018, 0, 1, 3 );

INSERT INTO lab_mysql.salesperson (staff_id, staff_name, store)
Values ('00001', 'Petey Cruiser', 'Madrid'),
		('00002', ' Sthesia', 'Barcelona'),
        ('00003', 'Paul Molive','Berlin' ),
        ('00004', 'Gail Forcewind','Paris' ),
        ('00005', 'Paige Turner','Mimia' ),
        ('00006', 'Bob Frapples','Mexico City' ),
        ('00007', 'Walter Melon','Amsterdam' ),
        ('00008','Shonda Leer','São Paulo' );


