drop table cars;

drop table customers;

drop table salespersons;

drop table invoices;

ALTER TABLE invoices
DROP COLUMN Country;

ALTER TABLE invoices
DROP COLUMN State_province;

ALTER TABLE invoices
DROP COLUMN City;

ALTER TABLE invoices
DROP COLUMN Zip_postal_code;