INSERT INTO car ( car_vin, manufactuer, model, year, color )
   VALUES ("3K096I98581DHSNUP", "Volkswagen",	"Tiguan",	"2019",	"Blue"),
   ("ZM8G7BEUQZ97IH46V",	"Peugeot",	"Rifter",	"2019",	"Red"),
   ("RKXVNNIHLVVZOUB4M",	"Ford",	"Fusion",	"2018",	"White"),
   ( "HKNDGS7CU31E9Z7JW",	"Toyota",	"RAV4",	"2018",	"Silver"),
   ("DAM41UDN3CHU2WVF6",	"Volvo",	"V60",	"2019",	"Gray"),
   (  "DAM41UDN3CHU2WVF6",	"Volvo",	"V60 Cross Country",	"2019",	"Gray") ;
   
   INSERT INTO customers ( costumers_id, Name, phone, email, address, city, state, country, postal)
   VALUES ( "1",	"Pablo Picasso",	"34 636 17 63 82",	"-",	"Paseo de la Chopera, 14", 	"Madrid",	"Madrid",	"Spain",	"28045"),
   ("2",	"Abraham Lincoln", 	"1 305 907 7086",	"-",	"120 SW 8th St",	"Miami",	"Florida",	"United States",	"33130"),
   ("3",	"Napoléon Bonaparte",	"33 1 79 75 40 00",	"-",	"40 Rue du Colisée",	"Paris",	"Île-de-France",	"France",	"75008");
   
   INSERT INTO salespersons ( salespersons_id, salespersons_name, store )
   VALUES ( "1",	"Petey Cruiser",	"Madrid"),
   ("2",	"Anna Sthesia",	"Barcelona"),
   ("3",	"Paul Molive",	"Berlin"),
   ("4",	"Gail Forcewind",	"Paris"),
   ("5",	"Paige Turner",	"Mimia"),
   ("6",	"Bob Frapples",	"Mexico City"),
   ("7",	"Walter Melon",	"Amsterdam"),
   ("8",	"Shonda Leer",	"São Paulo");
   
   
   INSERT INTO Invoices (  invoices_no, invoices_date, car_id, costumers_id , salespersons_id)
   VALUES ( "852399038","22-08-2018",	
		 (SELECT car_id FROM car WHERE car_id = "0"), 
		 (SELECT costumers_id FROM customers WHERE costumers_id = "1"),	
		 (SELECT salespersons_id FROM salespersons WHERE salespersons_id ="3")),
   ("1731166526",	"31-12-2018",	
   (SELECT car_id FROM car WHERE car_id = "3"), 
		 (SELECT costumers_id FROM customers WHERE costumers_id = "0"),	
		 (SELECT salespersons_id FROM salespersons WHERE salespersons_id ="5")),
   ( "271135104",	"22-01-2019",
		 (SELECT car_id FROM car WHERE car_id = "2"), 
		 (SELECT costumers_id  FROM customers WHERE costumers_id  = "2"),	
		 (SELECT salespersons_id FROM salespersons WHERE salespersons_id ="7"));
         



   
