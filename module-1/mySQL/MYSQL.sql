#MySQL
#Challenge2

#cars table
CREATE TABLE Car_dealership.cars
(
Car_ID INT(10) AUTO_INCREMENT,
VIN varchar (30),
Manufacturer varchar (30),
Model varchar (30),
Colour varchar (30),
YEAR int(4),
PRIMARY KEY (CAR_ID)
);

ALTER TABLE cars AUTO_INCREMENT =101;

#Customer table
CREATE TABLE Car_dealership.Customer
(
Cus_ID INT(10) AUTO_INCREMENT,
Cus_Name varchar (30),
Phone varchar (30),
Email varchar (60),
Address varchar (100),
City varchar (30),
State varchar (50),
Country varchar (30),
ZIP INT(10),
PRIMARY KEY (Cus_ID)
);
ALTER TABLE Customer AUTO_INCREMENT =2001;

#staff table
CREATE TABLE Car_dealership.Staff
(
Staff_ID INT(10) AUTO_INCREMENT,
Staff_Name varchar (30),
Store varchar (30),
PRIMARY KEY (Staff_ID)
);
ALTER TABLE Staff AUTO_INCREMENT =6001;

#Invoice table
CREATE TABLE Car_dealership.Invoices
(
Invoice_ID INT(10) AUTO_INCREMENT,
Invoice_Number varchar (30),
Invoice_Date varchar (30),
Car_ID INT(10),
Cus_ID INT(10),
Staff_ID INT(10),
PRIMARY KEY (Invoice_ID)
);
Alter table Invoices AUTO_INCREMENT =8001;

#Challenge 3
#into cars
Insert into cars (VIN, Manufacturer, Model, Colour, YEAR)
Values ("3K096I98581DHSNUP","Volkswagen","Tiguan","Blue",2019);
Insert into cars (VIN, Manufacturer, Model, Colour, YEAR)
Values 
("ZM8G7BEUQZ97IH46V","Peugeot","Rifter","Red",2019),
("RKXVNNIHLVVZOUB4M","Ford","Fusion","White",2018),
("HKNDGS7CU31E9Z7JW","Toyota","RAV4","White",2018),
("DAM41UDN3CHU2WVF6","Volvo","V60","Grey",2019),
("DAM41UDN3CHU2WVF6","Volvo","V60 Cross Country","Grey",2019);

#into Customer
Insert into customer (Cus_Name, Phone, Email, Address, City, State, Country, ZIP)
Values 
("Pablo Picasso","+34 636 17 63 82","-","Paseo de la Chopera, 14","Madrid", "Madrid","Spain",28045),
("Abraham Lincoln","+1 305 907 7086","-","120 SW 8th St","Miami", "Florida","United States",33130),
("Napoléon Bonaparte","+33 1 79 75 40 00","-","40 Rue du Colisée","Paris", "Île-de-France","France",75008);

#Into Staff
Insert into Staff (Staff_Name,Store)
Values 
("Petey Cruiser","Madrid"),
("Anna Sthesia","Barcelona"),
("Paul Molive","Berlin"),
("Gail Forcewind","Paris"),
("Paige Turner","Mimia"),
("Bob Frapplesr","Mexico City"),
("Walter Melon","Amsterdam"),
("Shonda Leer","São Paulo");

#Into Invoices 
Insert into Invoices (Invoice_Number,Invoice_Date,Car_ID,Cus_ID,Staff_ID)
Values 
("852399038","22-08-2018",101,2002,6004),
("731166526","31-12-2018",104,2001,6006),
("271135104","22-01-2019",103,2003,6008);
#Bonus

Update Staff SET Store ="Miami"
Where Staff_ID=6005;
Update Customer SET Email ="ppicasso@gmail.com"
Where Cus_ID=2001;
Update Customer SET Email ="lincoln@us.gov"
Where Cus_ID=2002;
Update Customer SET Email ="hello@napoleon.me"
Where Cus_ID=2003;
