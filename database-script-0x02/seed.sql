-- Insert sample users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
    ('U1', 'Alice', 'Smith', 'alice@example.com', 'hashed_password_1', '1234567890', 'guest', CURRENT_TIMESTAMP),
    ('U2', 'Bob', 'Johnson', 'bob@example.com', 'hashed_password_2', '0987654321', 'host', CURRENT_TIMESTAMP),
    ('U3', 'Carol', 'Taylor', 'carol@example.com', 'hashed_password_3', NULL, 'admin', CURRENT_TIMESTAMP),
    ('U4', 'David', 'Williams', 'david@example.com', 'hashed_password_4', '1112223333', 'guest', CURRENT_TIMESTAMP),
    ('U5', 'Eve', 'Brown', 'eve@example.com', 'hashed_password_5', '4445556666', 'host', CURRENT_TIMESTAMP);

-- Insert sample properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
    ('P1', 'U2', 'Beachside Cottage', 'A lovely cottage by the beach', 'Beach Town', 120.50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('P2', 'U2', 'Mountain Retreat', 'A peaceful retreat in the mountains', 'Mountain Village', 180.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('P3', 'U5', 'Urban Apartment', 'A modern apartment in the city center', 'City Center', 100.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('P4', 'U5', 'Lakeview Cabin', 'A cozy cabin with a view of the lake', 'Lakeview Area', 150.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('P5', 'U2', 'Desert Oasis', 'A unique stay in the desert', 'Desert Town', 200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert sample bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
    ('B1', 'P1', 'U1', '2024-12-01', '2024-12-07', 723.00, 'confirmed', CURRENT_TIMESTAMP),
    ('B2', 'P2', 'U1', '2025-01-10', '2025-01-15', 900.00, 'pending', CURRENT_TIMESTAMP),
    ('B3', 'P3', 'U4', '2024-11-15', '2024-11-18', 300.00, 'confirmed', CURRENT_TIMESTAMP),
    ('B4', 'P4', 'U1', '2024-12-20', '2024-12-25', 750.00, 'canceled', CURRENT_TIMESTAMP),
    ('B5', 'P5', 'U4', '2025-02-01', '2025-02-05', 1000.00, 'pending', CURRENT_TIMESTAMP);

-- Insert sample payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
    ('PAY1', 'B1', 723.00, CURRENT_TIMESTAMP, 'credit_card'),
    ('PAY2', 'B2', 900.00, CURRENT_TIMESTAMP, 'paypal'),
    ('PAY3', 'B3', 300.00, CURRENT_TIMESTAMP, 'stripe'),
    ('PAY4', 'B5', 1000.00, CURRENT_TIMESTAMP, 'credit_card');

-- Insert sample reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
    ('R1', 'P1', 'U1', 5, 'Amazing place, had a great time!', CURRENT_TIMESTAMP),
    ('R2', 'P2', 'U1', 4, 'Beautiful location, but a bit pricey.', CURRENT_TIMESTAMP),
    ('R3', 'P3', 'U4', 3, 'Convenient location but noisy.', CURRENT_TIMESTAMP),
    ('R4', 'P4', 'U1', 5, 'Perfect for a family getaway.', CURRENT_TIMESTAMP),
    ('R5', 'P5', 'U4', 4, 'Interesting experience, unique location.', CURRENT_TIMESTAMP);

-- Insert sample messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
    ('M1', 'U1', 'U2', 'Hi Bob, is the cottage available for next week?', CURRENT_TIMESTAMP),
    ('M2', 'U2', 'U1', 'Hi Alice, yes it is available!', CURRENT_TIMESTAMP),
    ('M3', 'U4', 'U5', 'Hi Eve, I am interested in the Urban Apartment.', CURRENT_TIMESTAMP),
    ('M4', 'U5', 'U4', 'Hi David, the Urban Apartment is available.', CURRENT_TIMESTAMP),
    ('M5', 'U1', 'U2', 'Thank you for your quick response!', CURRENT_TIMESTAMP);

