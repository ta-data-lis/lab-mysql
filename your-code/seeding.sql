INSERT INTO car ( car_id, car_vin, manufactuer, model, year, color )
   VALUES ("0", "3K096I98581DHSNUP", "Volkswagen",	"Tiguan",	"2019",	"Blue"),
   ("1", "ZM8G7BEUQZ97IH46V",	"Peugeot",	"Rifter",	"2019",	"Red"),
   ("2","RKXVNNIHLVVZOUB4M",	"Ford",	"Fusion",	"2018",	"White"),
   ("3", "HKNDGS7CU31E9Z7JW",	"Toyota",	"RAV4",	"2018",	"Silver"),
   ("4","DAM41UDN3CHU2WVF6",	"Volvo",	"V60",	"2019",	"Gray"),
   ("5",  "DAM41UDN3CHU2WVF6",	"Volvo",	"V60 Cross Country",	"2019",	"Gray") ;
   
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
   
   INSERT INTO Invoices (  invoices_no, invoices_date)
   VALUES ( "852399038",	"22-08-2018",	"0",	"1",	"3"),
   ("731166526",	"31-12-2018",	"3",	"0",	"5"),
   ("271135104",	"22-01-2019",	"2",	"2",	"7");
   
