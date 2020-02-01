CREATE DATABASE car_dealership;

# Table1 - Cars - the vehicle identification number (VIN), manufacturer, model, year, and color of the cars in your company's inventory.
CREATE TABLE IF NOT EXISTS cars (
						VIN VARCHAR(17),
						manufacturer VARCHAR(50),
						model VARCHAR(50),
						year INT(4),
						color VARCHAR(10)
								);

# Table2 - Customers - the customer ID, name, phone number, email, address, city, state/province, country, and zip/postal code of the customers.


# Table3 - Salespersons - staff ID, name, and the store at your company.


# Table4 - Invoices - the invoice number, date, car, customer, and salesperson related to each car sale.