INSERT INTO User (name, email, phone_number, password, authority) VALUES
('John Doe', 'johndoe@gmail.com', '123-456-7890', 'password123', 'admin'),
('Jane Smith', 'janesmith@gmail.com', '987-654-3210', 'password456', 'user'),
('Bob Johnson', 'bobjohnson@yahoo.com', '555-555-5555', 'password789', 'user');

INSERT INTO Car_Type (passengers_capacity) VALUES
(4),
(6),
(8);

INSERT INTO Car_Type_Price (type_id, price) VALUES
(1, 50),
(2, 75),
(3, 100);

INSERT INTO Driver (type_id, name, email, phone_number, license_plate, status) VALUES
(1, 'David Lee', 'davidlee@gmail.com', '555-123-4567', 'ABC123', 'available'),
(2, 'Lisa Kim', 'lisakim@gmail.com', '555-234-5678', 'DEF456', 'available'),
(3, 'Mike Chen', 'mikechen@gmail.com', '555-345-6789', 'GHI789', 'available');

INSERT INTO Car (type_id, driver_id) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO Rides (car_id, ride_payment_id, pickup_location, dropoff_location, booking_time, ride_status, rating, description)
VALUES 
    (1, NULL, '123 Main St, Anytown, USA', '456 Oak Ave, Anytown, USA', '2022-04-01 10:00:00', 'waiting', NULL, NULL),
    (2, NULL, '789 Pine St, Anytown, USA', '101 Maple Ave, Anytown, USA', '2022-04-02 11:00:00', 'waiting', NULL, NULL),
    (3, NULL, '321 Elm St, Anytown, USA', '654 Cedar Ave, Anytown, USA', '2022-04-03 12:00:00', 'waiting', NULL, NULL),
    (2, NULL, '987 Birch St, Anytown, USA', '321 Spruce Ave, Anytown, USA', '2022-04-04 13:00:00', 'waiting', NULL, NULL),
    (1, NULL, '654 Cherry St, Anytown, USA', '789 Plum Ave, Anytown, USA', '2022-04-05 14:00:00', 'waiting', NULL, NULL),
    (2, NULL, '321 Peach St, Anytown, USA', '987 Pear Ave, Anytown, USA', '2022-04-06 15:00:00', 'waiting', NULL, NULL),
    (3, NULL, '123 Orange St, Anytown, USA', '456 Banana Ave, Anytown, USA', '2022-04-07 16:00:00', 'waiting', NULL, NULL),
    (3, NULL, '789 Grape St, Anytown, USA', '101 Lemon Ave, Anytown, USA', '2022-04-08 17:00:00', 'waiting', NULL, NULL),
    (2, NULL, '321 Lime St, Anytown, USA', '654 Apple Ave, Anytown, USA', '2022-04-09 18:00:00', 'waiting', NULL, NULL),
    (1, NULL, '987 Peach St, Anytown, USA', '321 Pear Ave, Anytown, USA', '2022-04-10 19:00:00', 'waiting', NULL, NULL);

INSERT INTO Payment (ride_id, gateway, user_id)
VALUES
    (1, 'PayPal', 1),
    (2, 'Credit Card', 2),
    (3, 'PayPal', 3),
    (4, 'Credit Card', 1),
    (5, 'PayPal', 2),
    (6, 'Credit Card', 3),
    (7, 'PayPal', 1),
    (8, 'Credit Card', 2),
    (9, 'PayPal', 2),
    (10, 'Credit Card', 3);


INSERT INTO Ride_Payment (ride_id, user_id, payment_id)
VALUES
    (1,1,1),
    (2,2,2),
    (3,3,3),
    (4,1,4),
    (5,2,5),
    (6,3,6),
    (7,1,7),
    (8,2,8),
    (9,2,9),
    (10,3,10);

UPDATE Rides SET ride_payment_id = ride_id;