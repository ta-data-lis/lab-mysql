use lab_mysql;


select *
from salespersons;


update salespersons
set store = "Miami"
where Salespersons_id=4;

select *
from customers;

update customers
set Email = "ppicasso@gmail.com"
where Customers_id=0;

update customers
set Email = "lincoln@us.gov"
where Customers_id=1;

update customers
set Email = "hello@napoleon.me "
where Customers_id=2;

select *
from customers;