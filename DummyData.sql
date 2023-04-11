INSERT INTO User (name, email, phone_number, password, authority)
VALUES 
    ('John Doe', 'johndoe@example.com', '1234567890', 'password1', 'user'),
    ('Jane Doe', 'janedoe@example.com', '0987654321', 'password2', 'user'),
    ('Bob Smith', 'bobsmith@example.com', '5555555555', 'password3', 'admin'),
    ('Sara Johnson', 'sarajohnson@example.com', '7777777777', 'password4', 'user'),
    ('Tom Lee', 'tomlee@example.com', '1111111111', 'password5', 'user'),
    ('Emily Liu', 'emilyliu@example.com', '2222222222', 'password6', 'user'),
    ('David Chen', 'davidchen@example.com', '3333333333', 'password7', 'user'),
    ('Karen Wang', 'karenwang@example.com', '4444444444', 'password8', 'user'),
    ('Alex Brown', 'alexbrown@example.com', '6666666666', 'password9', 'user'),
    ('Sarah Park', 'sarahpark@example.com', '9999999999', 'password10', 'user');

INSERT INTO Car_Type (passengers_capacity)
VALUES 
    (2),
    (4),
    (6),
    (8),
    (10),
    (12),
    (14),
    (16),
    (18),
    (20);

INSERT INTO Car_Type_Price (type_id, price)
VALUES 
    (1, 50),
    (2, 80),
    (3, 100),
    (4, 120),
    (5, 150),
    (6, 180),
    (7, 200),
    (8, 220),
    (9, 250),
    (10, 300);

INSERT INTO Driver (type_id, name, email, phone_number, license_plate, status)
VALUES 
    (1, 'Mark Johnson', 'markjohnson@example.com', '1234567890', 'AB123', 'available'),
    (2, 'Anna Smith', 'annasmith@example.com', '0987654321', 'CD456', 'busy'),
    (3, 'Jake Lee', 'jakelee@example.com', '5555555555', 'EF789', 'available'),
    (4, 'Emily Chen', 'emilychen@example.com', '7777777777', 'GH012', 'available'),
    (5, 'Sophie Kim', 'sophiekim@example.com', '1111111111', 'IJ345', 'busy'),
    (1, 'Mike Brown', 'mikebrown@example.com', '2222222222', 'KL678', 'available'),
    (3, 'Lily Wang', 'lilywang@example.com', '3333333333', 'MN901', 'available'),
    (4, 'Harry Park', 'harrypark@example.com', '4444444444', 'OP234', 'available'),
    (5, 'Grace Lee', 'gracelee@example.com', '6666666666', 'QR567', 'busy'),
    (2, 'Kevin Lee', 'kevinlee@example.com', '9999999999', 'ST890', 'available');

INSERT INTO Car (type_id, driver_id)
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (1, 6),
    (3, 7),
    (4, 8),
    (5, 9),
    (2, 10);

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