-- Insert sample users
INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
    ('c2b8d6b9-3873-4b7a-af95-edf549611eb6', 'Alice', 'Smith', 'alice@example.com', 'hashed_password_1', '1234567890', 'guest', CURRENT_TIMESTAMP),
    ('269d3a71-a6e4-4792-8abc-0cb5038102f7', 'Bob', 'Johnson', 'bob@example.com', 'hashed_password_2', '0987654321', 'host', CURRENT_TIMESTAMP),
    ('21ed36f1-a2e8-41e5-b538-41f64ac51123', 'Carol', 'Taylor', 'carol@example.com', 'hashed_password_3', NULL, 'admin', CURRENT_TIMESTAMP),
    ('bc9fcf27-a27c-4e89-a503-ffec4e7d209d', 'David', 'Williams', 'david@example.com', 'hashed_password_4', '1112223333', 'guest', CURRENT_TIMESTAMP),
    ('10ec9067-45a7-4911-9cbe-18c7cd1b64c9', 'Eve', 'Brown', 'eve@example.com', 'hashed_password_5', '4445556666', 'host', CURRENT_TIMESTAMP);

-- Insert sample properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
    ('19da67ea-ba8a-4372-a8c2-640b53a83a02', 'c2b8d6b9-3873-4b7a-af95-edf549611eb6', 'Beachside Cottage', 'A lovely cottage by the beach', 'Beach Town', 120.50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('02396c03-ca68-4b27-afd7-7c45df6f397c', '21ed36f1-a2e8-41e5-b538-41f64ac51123', 'Mountain Retreat', 'A peaceful retreat in the mountains', 'Mountain Village', 180.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('99060906-ea88-499d-ad88-27c1370bba33', 'bc9fcf27-a27c-4e89-a503-ffec4e7d209d', 'Urban Apartment', 'A modern apartment in the city center', 'City Center', 100.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('5c4d5467-524c-4b49-a205-48896b8f95d3', '21ed36f1-a2e8-41e5-b538-41f64ac51123', 'Lakeview Cabin', 'A cozy cabin with a view of the lake', 'Lakeview Area', 150.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('64b40f9d-75fa-4810-9503-32a0bcfc1cad', 'c2b8d6b9-3873-4b7a-af95-edf549611eb6', 'Desert Oasis', 'A unique stay in the desert', 'Desert Town', 200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert sample bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
    ('cf35a92d-e940-4942-a36a-8c01138e0784', '19da67ea-ba8a-4372-a8c2-640b53a83a02', '21ed36f1-a2e8-41e5-b538-41f64ac51123', '2024-12-01', '2024-12-07', 723.00, 'confirmed', CURRENT_TIMESTAMP),
    ('68949f81-5afb-44ce-a557-a925407e5633' ,'02396c03-ca68-4b27-afd7-7c45df6f397c', 'c2b8d6b9-3873-4b7a-af95-edf549611eb6', '2025-01-10', '2025-01-15', 900.00, 'pending', CURRENT_TIMESTAMP),
    ('50ff5a9d-03ce-4436-bc44-9002594a3bfa', '99060906-ea88-499d-ad88-27c1370bba33', '21ed36f1-a2e8-41e5-b538-41f64ac51123', '2024-11-15', '2024-11-18', 300.00, 'confirmed', CURRENT_TIMESTAMP),
    ('02187a8e-8892-434f-ac9e-fc057b5e7051', '5c4d5467-524c-4b49-a205-48896b8f95d3', 'bc9fcf27-a27c-4e89-a503-ffec4e7d209d', '2024-12-20', '2024-12-25', 750.00, 'canceled', CURRENT_TIMESTAMP),
    ('cdbc742d-84c5-480c-acf8-820fd3ea6428', '64b40f9d-75fa-4810-9503-32a0bcfc1cad', 'bc9fcf27-a27c-4e89-a503-ffec4e7d209d', '2025-02-01', '2025-02-05', 1000.00, 'pending', CURRENT_TIMESTAMP);

-- Insert sample payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
    ('03c11227-88a1-4271-8da1-2d87217bdb76', 'cf35a92d-e940-4942-a36a-8c01138e0784', 723.00, CURRENT_TIMESTAMP, 'credit_card'),
    ('63470de8-326e-49c6-ad6c-bdecf93cfa15', '50ff5a9d-03ce-4436-bc44-9002594a3bfa', 900.00, CURRENT_TIMESTAMP, 'paypal'),
    ('57147e51-0bb2-454b-99e4-d79cf0056795', 'cdbc742d-84c5-480c-acf8-820fd3ea6428', 300.00, CURRENT_TIMESTAMP, 'stripe'),
    ('21c7544a-83d4-4b40-a924-919c86aae969', '02187a8e-8892-434f-ac9e-fc057b5e7051', 1000.00, CURRENT_TIMESTAMP, 'credit_card');

-- Insert sample reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
    ('127d95d2-6aa1-43c5-8593-eaae56494619', '19da67ea-ba8a-4372-a8c2-640b53a83a02', 'c2b8d6b9-3873-4b7a-af95-edf549611eb6', 5, 'Amazing place, had a great time!', CURRENT_TIMESTAMP),
    ('dd3a4819-f0ec-45f2-a88f-f1d579703747', '02396c03-ca68-4b27-afd7-7c45df6f397c', 'c2b8d6b9-3873-4b7a-af95-edf549611eb6', 4, 'Beautiful location, but a bit pricey.', CURRENT_TIMESTAMP),
    ('b7260e56-9d6b-4ab9-9f66-84fd057491a5', '99060906-ea88-499d-ad88-27c1370bba33', 'bc9fcf27-a27c-4e89-a503-ffec4e7d209d', 3, 'Convenient location but noisy.', CURRENT_TIMESTAMP),
    ('423f94f4-ccb6-4bdb-9afb-33f2da78d508', '5c4d5467-524c-4b49-a205-48896b8f95d3', 'c2b8d6b9-3873-4b7a-af95-edf549611eb6', 5, 'Perfect for a family getaway.', CURRENT_TIMESTAMP),
    ('a67d7f96-fb9a-472a-a3ba-186e8ce531ef','64b40f9d-75fa-4810-9503-32a0bcfc1cad', 'bc9fcf27-a27c-4e89-a503-ffec4e7d209d', 4, 'Interesting experience, unique location.', CURRENT_TIMESTAMP);

-- Insert sample messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
    ('378f71b3-34fc-4b65-8d39-a66e8ef88dd3', 'c2b8d6b9-3873-4b7a-af95-edf549611eb6', '269d3a71-a6e4-4792-8abc-0cb5038102f7', 'Hi Bob, is the cottage available for next week?', CURRENT_TIMESTAMP),
    ('63cdd6fb-6ef9-4854-bab0-3cbf8deef301', '269d3a71-a6e4-4792-8abc-0cb5038102f7', 'c2b8d6b9-3873-4b7a-af95-edf549611eb6', 'Hi Alice, yes it is available!', CURRENT_TIMESTAMP),
    ('b708bf41-d7d5-4d18-a215-22df11ccf465', 'bc9fcf27-a27c-4e89-a503-ffec4e7d209d', '10ec9067-45a7-4911-9cbe-18c7cd1b64c9', 'Hi Eve, I am interested in the Urban Apartment.', CURRENT_TIMESTAMP),
    ('2ddc85d6-10bd-4f3d-9465-3dc85dab1125', '10ec9067-45a7-4911-9cbe-18c7cd1b64c9', 'bc9fcf27-a27c-4e89-a503-ffec4e7d209d', 'Hi David, the Urban Apartment is available.', CURRENT_TIMESTAMP),
    ('48550803-04b6-4f79-b0e7-9f1bb711b703','c2b8d6b9-3873-4b7a-af95-edf549611eb6', '269d3a71-a6e4-4792-8abc-0cb5038102f7', 'Thank you for your quick response!', CURRENT_TIMESTAMP);
    
    
    
    
    
    
    

