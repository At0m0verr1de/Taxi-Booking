CREATE DATABASE cab;
USE cab;

/* User Table stores data for all the users that register on the website*/
CREATE TABLE User (
    user_id INT PRIMARY KEY auto_increment,
    name VARCHAR(50),
    email VARCHAR(50),
    phone_number VARCHAR(20),
    password VARCHAR(255),
    authority VARCHAR(20) DEFAULT 'user'
)AUTO_INCREMENT=1;

/* Car Type stores the */
CREATE TABLE Car_Type (
    type_id INT PRIMARY KEY auto_increment,
    passengers_capacity INT
)AUTO_INCREMENT=1;

/* Car Type Price stores the price for each type of car */
CREATE TABLE Car_Type_Price (
    type_id INT PRIMARY KEY,
    price INT,
    FOREIGN KEY (type_id) REFERENCES Car_Type(type_id) on update cascade on delete cascade
);

/* Stores all the details of the driver */
CREATE TABLE Driver (
    driver_id INT PRIMARY KEY auto_increment,
    type_id INT,
    name VARCHAR(50),
    email VARCHAR(50),
    phone_number VARCHAR(20),
    license_plate VARCHAR(20),
    status VARCHAR(20) DEFAULT 'available',
    FOREIGN KEY (type_id) REFERENCES Car_Type(type_id) on update cascade on delete cascade
)AUTO_INCREMENT=1;

/* Stores all the details of the car */
CREATE TABLE Car (
    car_id INT PRIMARY KEY auto_increment,
    type_id INT,
    driver_id INT,
    FOREIGN KEY (type_id) REFERENCES Car_Type(type_id) on update cascade on delete cascade,
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id) on update cascade on delete cascade
)AUTO_INCREMENT=1;

/* Stores all the details of the ride */
CREATE TABLE Rides (
    ride_id INT PRIMARY KEY auto_increment,
    car_id INT,
    ride_payment_id INT,
    pickup_location VARCHAR(50),
    dropoff_location VARCHAR(50),
    booking_time TIMESTAMP,
    ride_status VARCHAR(20) DEFAULT 'waiting', /* or booked if driver has been allocated */
    rating INT,
    description VARCHAR(255),
    FOREIGN KEY (car_id) REFERENCES Car(car_id) on update cascade on delete cascade
)AUTO_INCREMENT=1;

/* Stores all the details of the payment */
CREATE TABLE Payment (
    payment_id INT PRIMARY KEY auto_increment,
    ride_id INT,
    gateway VARCHAR(255),
    user_id INT,
    FOREIGN KEY (ride_id) REFERENCES Rides(ride_id) on update cascade on delete cascade,
    FOREIGN KEY (user_id) REFERENCES User(user_id) on update cascade on delete cascade
)AUTO_INCREMENT=1;

/* Ensures 3nf form */
CREATE TABLE Ride_Payment (
    ride_id INT PRIMARY KEY,
    user_id INT,
    payment_id INT,
    FOREIGN KEY (ride_id) REFERENCES Rides(ride_id) on update cascade on delete cascade,
    FOREIGN KEY (user_id) REFERENCES User(user_id) on update cascade on delete cascade,
    FOREIGN KEY (payment_id) REFERENCES Payment(payment_id) on update cascade on delete cascade
)AUTO_INCREMENT=1;

ALTER TABLE rides ADD CONSTRAINT FOREIGN KEY (ride_payment_id) REFERENCES Ride_Payment(ride_id) on update cascade on delete cascade;
