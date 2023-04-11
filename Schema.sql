CREATE TABLE User (
    user_id INT PRIMARY KEY auto_increment,
    name VARCHAR(50),
    email VARCHAR(50),
    phone_number VARCHAR(20),
    password VARCHAR(255),
    authority VARCHAR(20) DEFAULT 'user'
);

CREATE TABLE Driver (
    driver_id INT PRIMARY KEY auto_increment,
    type_id INT,
    name VARCHAR(50),
    email VARCHAR(50),
    phone_number VARCHAR(20),
    license_plate VARCHAR(20),
    status VARCHAR(20) DEFAULT 'available',
    FOREIGN KEY (type_id) REFERENCES Car_Type(type_id) on update cascade on delete cascade
);

CREATE TABLE Car_Type (
    type_id INT PRIMARY KEY auto_increment,
    price INT,
    passengers INT
);

CREATE TABLE Car (
    car_id INT PRIMARY KEY auto_increment,
    type_id INT,
    driver_id INT,
    FOREIGN KEY (type_id) REFERENCES Car_Type(type_id) on update cascade on delete cascade,
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id) on update cascade on delete cascade
);

CREATE TABLE Rides (
    ride_id INT PRIMARY KEY auto_increment,
    user_id INT,
    car_id INT,
    pickup_location VARCHAR(50),
    dropoff_location VARCHAR(50),
    booking_time TIMESTAMP,
    ride_status VARCHAR(20) DEFAULT 'waiting', /* or booked if driver has been allocated */
    rating INT,
    description VARCHAR(255),
    payment_id INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id) on update cascade on delete cascade,
    FOREIGN KEY (car_id) REFERENCES Car(car_id) on update cascade on delete cascade
);


CREATE TABLE Payment (
    payment_id INT PRIMARY KEY auto_increment,
    ride_id INT,
    gateway VARCHAR(255),
    user_id INT,
    FOREIGN KEY (ride_id) REFERENCES Rides(ride_id) on update cascade on delete cascade,
    FOREIGN KEY (user_id) REFERENCES User(user_id) on update cascade on delete cascade
);
