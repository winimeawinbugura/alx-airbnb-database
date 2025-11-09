-- =====================================================
-- Airbnb Clone Database Seed Script
-- File: seed.sql
-- Description: Populates tables with sample data
-- =====================================================

-- ==========================
-- USERS
-- ==========================
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('u1', 'John', 'Doe', 'john.doe@example.com', 'hashed_pw_1', '233501234567', 'guest'),
('u2', 'Jane', 'Smith', 'jane.smith@example.com', 'hashed_pw_2', '233507654321', 'host'),
('u3', 'Michael', 'Brown', 'michael.brown@example.com', 'hashed_pw_3', '233506789012', 'admin'),
('u4', 'Linda', 'Johnson', 'linda.johnson@example.com', 'hashed_pw_4', '233509876543', 'guest');

-- ==========================
-- PROPERTIES
-- ==========================
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('p1', 'u2', 'Cozy Apartment', 'A lovely 2-bedroom apartment in the city center.', 'Accra, Ghana', 120.00),
('p2', 'u2', 'Beachfront Villa', 'Spacious villa overlooking the ocean.', 'Cape Coast, Ghana', 250.00),
('p3', 'u2', 'Mountain Cabin', 'Quiet cabin retreat with scenic views.', 'Aburi, Ghana', 150.00);

-- ==========================
-- BOOKINGS
-- ==========================
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('b1', 'p1', 'u1', '2025-11-01', '2025-11-05', 480.00, 'confirmed'),
('b2', 'p2', 'u4', '2025-11-10', '2025-11-12', 500.00, 'pending'),
('b3', 'p3', 'u1', '2025-12-01', '2025-12-04', 450.00, 'confirmed');

-- ==========================
-- PAYMENTS
-- ==========================
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('pay1', 'b1', 480.00, '2025-11-01 09:30:00', 'credit_card'),
('pay2', 'b3', 450.00, '2025-12-01 10:15:00', 'paypal');

-- ==========================
-- REVIEWS
-- ==========================
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('r1', 'p1', 'u1', 5, 'Amazing stay! Very clean and well-located.'),
('r2', 'p2', 'u4', 4, 'Beautiful view but slightly expensive.'),
('r3', 'p3', 'u1', 5, 'Peaceful and cozy cabin, highly recommend!');

-- ==========================
-- MESSAGES
-- ==========================
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('m1', 'u1', 'u2', 'Hi Jane, is the Beachfront Villa available next weekend?'),
('m2', 'u2', 'u1', 'Hi John, yes it is available from Friday to Sunday.'),
('m3', 'u4', 'u2', 'Hello Jane, can I get a discount for a longer stay?');

-- =====================================================
-- END OF SEED DATA
-- =====================================================
