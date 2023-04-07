CREATE TABLE Contact (
    contact_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    phone_number VARCHAR(20)
);

CREATE TABLE User (
    user_id INT PRIMARY KEY,
    contact_id INT,
    FOREIGN KEY (contact_id) REFERENCES Contact(contact_id)
);
 
CREATE TABLE Driver (
    driver_id INT PRIMARY KEY,
    type_id INT,
    contact_id INT,
    license_plate VARCHAR(20),
    status ENUM('available', 'booked') DEFAULT 'available',
    FOREIGN KEY (type_id) REFERENCES Car_Type(type_id),
    FOREIGN KEY (contact_id) REFERENCES Contact(contact_id)
);

CREATE TABLE Car_Type (
    type_id INT PRIMARY KEY,
    price INT,
    passengers INT
);

CREATE TABLE Car (
    car_id INT PRIMARY KEY,
    type_id INT,
    driver_id INT,
    FOREIGN KEY (type_id) REFERENCES Car_Type(type_id),
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id)
);

CREATE TABLE Rides (
    ride_id INT PRIMARY KEY,
    user_id INT,
    car_id INT,
    pickup_location VARCHAR(50),
    dropoff_location VARCHAR(50),
    booking_time TIMESTAMP,
    ride_status ENUM('booked', 'waiting') DEFAULT 'booked',
    rating ENUM(1, 2, 3, 4, 5),
    desc VARCHAR(255),
    payment_id INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (car_id) REFERENCES Car(car_id),
    FOREIGN KEY (payment_id) REFERENCES Payment(payment_id)
);

CREATE TABLE Payment (
    payment_id INT PRIMARY KEY,
    ride_id INT,
    gateway VARCHAR(255),
    user_id INT,
    FOREIGN KEY (ride_id) REFERENCES Rides(ride_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);