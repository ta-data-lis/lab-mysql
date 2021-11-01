

insert into car_company.cars(car_id, vin, manufacturer, model, year, color)
values(0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
(1, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
(2, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
(3, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
(4, "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
(5, "DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");


insert into car_company.customers(id_c, customer_id, name_cost, phone_number, adress, city, st_province, country, zip)
values (0, 10001, "Pablo Picasso", "34636176382", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045),
(1, 20001, "Abraham Lincoln", "13059077086", "120 SW 8th St", "Miami", "Florida", "United States", 33130),
(2, 30001, "Napoléon Bonaparte", "33179754000", "40 Rue du Colisée",  "Paris", "Île-de-France", "France", "75008");
/* the phone number i put as srt because one of the values have more than ten so given error out of range*/

insert into car_company.salesperson(id_s, staff_id, name_staff, store_company)
values (0, 00001, "Petey Cruiser", "Madrid"),
(1, 00002, "Anna Sthesia", "Barcelona"),
(2, 00003, "Paul Molive", "Berlin"),
(3, 00004, "Gail Forcewind", "Paris"),
(4, 00005, "Paige Turner", "Mimia"),
(5, 00006, "Bob Frapples", "Mexico City"),
(6, 00007, "Walter Melon", "Amsterdam"),
(7, 00008, "Shonda Leer", "São Paulo");

insert into car_company.invoices(id_i,inv_number, date, car_id, id_c, id_s)
value(0, 852399038, "22-08-2018", 0, 1, 3),
(1, 731166526, "31-12-2018", 3, 0, 5),
(2, 271135104, "22-01-2019", 2, 2, 7);

select *
from customers;

select*
from cars;
