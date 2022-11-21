CREATE DATABASE cabservicemanagement;
USE cabservicemanagement;
CREATE TABLE passenger(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
name VARCHAR (100) NOT NULL,
user_name VARCHAR(100) NOT NULL,
email VARCHAR (100) NOT NULL,
password VARCHAR (100) NOT NULL,
mobile_number INT NOT NULL,
address VARCHAR(100) NOT NULL,
dob DATE NOT NULL
);
CREATE TABLE driver(
driver_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
driver_name VARCHAR (100) NOT NULL,
driver_mobile_number INT NOT NULL,
gender VARCHAR(100) NOT NULL
);
CREATE TABLE cabdetails(
cab_id INT  NOT NULL,
cab_number VARCHAR (100) NOT NULL,
cab_model VARCHAR (50) NOT NULL,
cab_description VARCHAR(100) NOT NULL,
cab_total_capacity VARCHAR (100) NOT NULL,
CONSTRAINT PK_cabs PRIMARY KEY (cab_id,cab_model)
);


CREATE TABLE booking_details(
cab_id INT PRIMARY KEY NOT NULL,
booking_id INT  NOT NULL,
cab_number VARCHAR (100) NOT NULL,
cab_model VARCHAR (50) NOT NULL,
date_of_booking DATE NOT NULL,
date_of_travel DATE NOT NULL,
number_of_passengers INT NOT NULL,
pick_up_location VARCHAR(100) NOT NULL,
drop_off_location VARCHAR(100) NOT NULL,
id INT NOT NULL,
number_of_passenger INT NOT NULL,
cost_per_passenger VARCHAR(100) NOT NULL,
driver_id INT  NOT NULL,
CONSTRAINT FK_cabmodel FOREIGN KEY 
(id)REFERENCES passenger(id),


CONSTRAINT FK_driverid FOREIGN KEY (driver_id)
REFERENCES driver(driver_id),
CONSTRAINT FK_cabid FOREIGN KEY (cab_id)
REFERENCES cabdetails(cab_id)
);



