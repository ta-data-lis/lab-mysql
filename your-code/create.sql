<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>ContentFilters</key>
	<dict/>
	<key>auto_connect</key>
	<true/>
	<key>data</key>
	<dict>
		<key>connection</key>
		<dict>
			<key>database</key>
			<string>lab_mysql</string>
			<key>host</key>
			<string>127.0.01</string>
			<key>kcid</key>
			<string>4000296867165950090</string>
			<key>name</key>
			<string>localhost</string>
			<key>rdbms_type</key>
			<string>mysql</string>
			<key>sslCACertFileLocation</key>
			<string></string>
			<key>sslCACertFileLocationEnabled</key>
			<integer>0</integer>
			<key>sslCertificateFileLocation</key>
			<string></string>
			<key>sslCertificateFileLocationEnabled</key>
			<integer>0</integer>
			<key>sslKeyFileLocation</key>
			<string></string>
			<key>sslKeyFileLocationEnabled</key>
			<integer>0</integer>
			<key>type</key>
			<string>SPTCPIPConnection</string>
			<key>useSSL</key>
			<integer>0</integer>
			<key>user</key>
			<string>root</string>
		</dict>
		<key>session</key>
		<dict>
			<key>connectionEncoding</key>
			<string>utf8mb4</string>
			<key>contentFilterV2</key>
			<dict>
				<key>children</key>
				<array/>
				<key>filterClass</key>
				<string>groupNode</string>
				<key>isConjunction</key>
				<true/>
			</dict>
			<key>contentPageNumber</key>
			<integer>1</integer>
			<key>contentSelection</key>
			<data>
			YnBsaXN0MDDUAQIDBAUGBwpYJHZlcnNpb25ZJGFyY2hpdmVyVCR0
			b3BYJG9iamVjdHMSAAGGoF8QD05TS2V5ZWRBcmNoaXZlctEICVRk
			YXRhgAGoCwwXGBkaHiVVJG51bGzTDQ4PEBMWV05TLmtleXNaTlMu
			b2JqZWN0c1YkY2xhc3OiERKAAoADohQVgASABYAHVHR5cGVUcm93
			c18QHVNlbGVjdGlvbkRldGFpbFR5cGVOU0luZGV4U2V00hsPHB1c
			TlNSYW5nZUNvdW50EACABtIfICEiWiRjbGFzc25hbWVYJGNsYXNz
			ZXNaTlNJbmRleFNldKIjJFpOU0luZGV4U2V0WE5TT2JqZWN00h8g
			JidcTlNEaWN0aW9uYXJ5oiYkAAgAEQAaACQAKQAyADcASQBMAFEA
			UwBcAGIAaQBxAHwAgwCGAIgAigCNAI8AkQCTAJgAnQC9AMIAzwDR
			ANMA2ADjAOwA9wD6AQUBDgETASAAAAAAAAACAQAAAAAAAAAoAAAA
			AAAAAAAAAAAAAAABIw==
			</data>
			<key>contentSortColIsAsc</key>
			<true/>
			<key>contentViewport</key>
			<string>{{0, 0}, {902.5, 753}}</string>
			<key>isToolbarVisible</key>
			<true/>
			<key>queries</key>
			<string># Table1 - Cars - the vehicle identification number (VIN), manufacturer, model, year, and color of the cars in your company's inventory.
CREATE TABLE IF NOT EXISTS cars (
						ID SERIAL,
						VIN VARCHAR(17),
						manufacturer VARCHAR(50),
						model VARCHAR(50),
						year YEAR,
						color VARCHAR(10)
								);

# Table2 - Customers - the customer ID, name, phone number, email, address, city, state/province, country, and zip/postal code of the customers.
CREATE TABLE IF NOT EXISTS customers (
						ID SERIAL,
						customerID BIGINT(20),
						f_name VARCHAR(50),
						l_name VARCHAR(50),
						phone VARCHAR(20),
						email VARCHAR(50),
						address VARCHAR(200),
						city VARCHAR(25),
						state_province VARCHAR(25),
						country VARCHAR(25),
						zip INT(5)
								);

# Table3 - Salespersons - staff ID, name, and the store at your company.
CREATE TABLE IF NOT EXISTS staff (
						ID SERIAL,
						staffID BIGINT(20),
						f_name VARCHAR(50),
						l_name VARCHAR(50),
						store VARCHAR(50)
								);

# Table4 - Invoices - the invoice number, date, car, customer, and salesperson related to each car sale.
CREATE TABLE IF NOT EXISTS invoices (
						ID SERIAL,
						number BIGINT(20),
						date DATE,
						VIN VARCHAR(17),
						customerID BIGINT(20),
						staffID BIGINT(20)
								);</string>
			<key>view</key>
			<string>SP_VIEW_CUSTOMQUERY</string>
			<key>windowVerticalDividerPosition</key>
			<real>382.5</real>
		</dict>
	</dict>
	<key>encrypted</key>
	<false/>
	<key>format</key>
	<string>connection</string>
	<key>queryFavorites</key>
	<array/>
	<key>queryHistory</key>
	<array>
		<string># Table4 - Invoices - the invoice number, date, car, customer, and salesperson related to each car sale.
CREATE TABLE IF NOT EXISTS invoices (
						ID SERIAL,
						number BIGINT(20),
						date DATE,
						VIN VARCHAR(17),
						customerID BIGINT(20),
						staffID BIGINT(20)
								)</string>
		<string># Table3 - Salespersons - staff ID, name, and the store at your company.
CREATE TABLE IF NOT EXISTS staff (
						ID SERIAL,
						staffID BIGINT(20),
						f_name VARCHAR(50),
						l_name VARCHAR(50),
						store VARCHAR(50)
								)</string>
		<string># Table3 - Salespersons - staff ID, name, and the store at your company.
CREATE TABLE IF NOT EXISTS staff (
						ID SERIAL,
						staffID BIGINT,
						f_name VARCHAR(50),
						l_name VARCHAR(50),
						store VARCHAR(50),
								)</string>
		<string># Table3 - Salespersons - staff ID, name, and the store at your company.
CREATE TABLE IF NOT EXISTS staff (
						ID SERIAL,
						staffID BIGINT(20),
						f_name VARCHAR(50),
						l_name VARCHAR(50),
						store VARCHAR(50),
								)</string>
		<string># Table2 - Customers - the customer ID, name, phone number, email, address, city, state/province, country, and zip/postal code of the customers.
CREATE TABLE IF NOT EXISTS customers (
						ID SERIAL,
						customerID BIGINT(20),
						f_name VARCHAR(50),
						l_name VARCHAR(50),
						phone VARCHAR(20),
						email VARCHAR(50),
						address VARCHAR(200),
						city VARCHAR(25),
						state_province VARCHAR(25),
						country VARCHAR(25),
						zip INT(5)
								)</string>
		<string># Table1 - Cars - the vehicle identification number (VIN), manufacturer, model, year, and color of the cars in your company's inventory.
CREATE TABLE IF NOT EXISTS cars (
						ID SERIAL,
						VIN VARCHAR(17),
						manufacturer VARCHAR(50),
						model VARCHAR(50),
						year YEAR,
						color VARCHAR(10)
								)</string>
		<string># Table1 - Cars - the vehicle identification number (VIN), manufacturer, model, year, and color of the cars in your company's inventory.
CREATE TABLE IF NOT EXISTS cars (
						ID SERIAL,
						VIN VARCHAR(17),
						manufacturer VARCHAR(50),
						model VARCHAR(50),
						year,
						color VARCHAR(10)
								)</string>
		<string>SET sql_mode = "NO_AUTO_VALUE_ON_ZERO"</string>
		<string># Table3 - Salespersons - staff ID, name, and the store at your company.
CREATE TABLE IF NOT EXISTS staff (
						staffID BIGINT(20),
						f_name VARCHAR(50),
						l_name VARCHAR(50),
						store VARCHAR(50)
								)</string>
		<string># Table3 - Salespersons - staff ID, name, and the store at your company.
CREATE TABLE IF NOT EXISTS staff (
						staffID BIGINT(20),
						f_name VARCHAR(50),
						l_name VARCHAR(50),
						store VARCHAR(50),
								)</string>
		<string># Table4 - Invoices - the invoice number, date, car, customer, and salesperson related to each car sale.
CREATE TABLE IF NOT EXISTS invoices (
						number SERIAL,
						date DATE,
						VIN VARCHAR(17),
						customerID BIGINT(20),
						staffID BIGINT(20)
								)</string>
		<string># Table2 - Customers - the customer ID, name, phone number, email, address, city, state/province, country, and zip/postal code of the customers.
CREATE TABLE IF NOT EXISTS customers (
						customerID BIGINT(20),
						name VARCHAR(50),
						phone VARCHAR(15),
						email VARCHAR(50),
						address VARCHAR(200),
						city VARCHAR(25),
						state_province VARCHAR(25),
						country VARCHAR(25),
						zip INT(10)
								)</string>
		<string># Table1 - Cars - the vehicle identification number (VIN), manufacturer, model, year, and color of the cars in your company's inventory.
CREATE TABLE IF NOT EXISTS cars (
						VIN VARCHAR(17),
						manufacturer VARCHAR(50),
						model VARCHAR(50),
						year INT(4),
						color VARCHAR(10)
								)</string>
		<string>CREATE DATABASE lab_mysql</string>
		<string># Table4 - Invoices - the invoice number, date, car, customer, and salesperson related to each car sale.
CREATE TABLE IF NOT EXISTS invoices (
						number BIGINT(20),
						date DATE,
						VIN VARCHAR(17),
						customerID BIGINT(20),
						staffID BIGINT(20)
								)</string>
		<string># Table3 - Salespersons - staff ID, name, and the store at your company.
CREATE TABLE IF NOT EXISTS staff (
						staffID BIGINT(20),
						name VARCHAR(50),
						store VARCHAR(50)
								)</string>
		<string># Table2 - Customers - the customer ID, name, phone number, email, address, city, state/province, country, and zip/postal code of the customers.
CREATE TABLE IF NOT EXISTS customers (
						customerID BIGINT(20),
						name VARCHAR(50),
						phone VARCHAR(50),
						email VARCHAR(50),
						address VARCHAR(200),
						city VARCHAR(25),
						state_province VARCHAR(25),
						country VARCHAR(25),
						zip INT(10)
								)</string>
		<string># Table2 - Customers - the customer ID, name, phone number, email, address, city, state/province, country, and zip/postal code of the customers.
CREATE TABLE IF NOT EXISTS customers (
						customerID BIGINT(20),
						name VARCHAR(50),
						phone VARCHAR(50),
						email VARCHAR(50),
						address phone VARCHAR(200),
						city VARCHAR(25),
						state_province VARCHAR(25),
						country VARCHAR(25),
						zip INT(10)
								)</string>
		<string># Table1 - Cars - the vehicle identification number (VIN), manufacturer, model, year, and color of the cars in your company's inventory.
CREATE TABLE IF NOT EXISTS cars (
						VIN VARCHAR(17)
						manufacturer VARCHAR(50)
						model VARCHAR(50)
						year INT(4)
						color VARCHAR(10)
								)</string>
		<string>CREATE DATABASE car_dealership</string>
	</array>
	<key>rdbms_type</key>
	<string>mysql</string>
	<key>rdbms_version</key>
	<string>8.0.18</string>
	<key>version</key>
	<integer>1</integer>
</dict>
</plist>
