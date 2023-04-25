# 1  Challenge
#Cars
#Car_ID (auto-increment numeric ID)
#VIN (string)
#Manufacturer (string)
#Model (string)
#Year (integer)
#Color (string)
#Customers
#Customer_ID (auto-increment numeric ID)
#Name (string)
#Phone (string)
#Email (string)
#Address (string)
#City (string)
#State_Province (string)
#Country (string)
#Zip_Postal_Code (string)
#Salespersons
#Staff_ID (auto-increment numeric ID)
#Name (string)
#Store (string)
#Invoices
#Invoice_ID (auto-increment numeric ID)
#Date (date)
#Car_ID (foreign key referencing Cars.Car_ID)
#Customer_ID (foreign key referencing Customers.Customer_ID)
#Staff_ID (foreign key referencing Salespersons.Staff_ID)

# Cars and Customers have a many-to-many relationship through Invoices.
#Cars and Salespersons have a one-to-many relationship through Invoices.
#Customers and Salespersons have a one-to-many relationship through Invoices.




