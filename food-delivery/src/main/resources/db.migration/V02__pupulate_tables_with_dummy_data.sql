-- insert 10 dummy records in each table
--  address table
INSERT INTO address (street, number, city, postal_code, country, telephone, mobile, CLIENT_ID)
VALUES
    ('123 Main St', 'Apt 101', 'City1', '12345', 'Country1', '123-456-7890', '987-654-3210', 1),
    ('456 Elm St', 'Unit 202', 'City2', '54321', 'Country2', '555-123-4567', '888-999-0000', 2),
    ('789 Oak St', 'Suite 303', 'City3', '67890', 'Country3', '111-222-3333', '444-555-6666', 3),
    ('321 Pine St', 'Apt 404', 'City4', '98765', 'Country4', '999-888-7777', '777-666-5555', 4),
    ('555 Cedar St', 'Unit 505', 'City5', '23456', 'Country5', '222-333-4444', '123-987-7890', 5),
    ('777 Birch St', 'Suite 606', 'City6', '34567', 'Country6', '333-444-5555', '555-123-9876', 6),
    ('888 Maple St', 'Apt 707', 'City7', '45678', 'Country7', '444-555-6666', '999-000-1111', 7),
    ('999 Willow St', 'Unit 808', 'City8', '56789', 'Country8', '555-666-7777', '222-555-6666', 8),
    ('111 Redwood St', 'Suite 909', 'City9', '67890', 'Country9', '666-777-8888', '444-123-9876', 9),
    ('222 Aspen St', 'Apt 1010', 'City10', '78901', 'Country10', '777-888-9999', '888-555-1234', 10);

-- client table
INSERT INTO client (clientName, clientFamilyName, email, USER_ID, ADDRESS_ID)
VALUES
    ('John', 'Doe', 'john.doe@example.com', 1, 1),
    ('Alice', 'Smith', 'alice.smith@example.com', 2, 2),
    ('Bob', 'Johnson', 'bob.johnson@example.com', 3, 3),
    ('Eva', 'Williams', 'eva.williams@example.com', 4, 4),
    ('Michael', 'Brown', 'michael.brown@example.com', 5, 5),
    ('Emily', 'Davis', 'emily.davis@example.com', 6, 6),
    ('David', 'Miller', 'david.miller@example.com', 7, 7),
    ('Sophia', 'Wilson', 'sophia.wilson@example.com', 8, 8),
    ('Oliver', 'Jackson', 'oliver.jackson@example.com', 9, 9),
    ('Emma', 'Moore', 'emma.moore@example.com', 10, 10);

-- company_type table
INSERT INTO company_type (companyType)
VALUES
    ('Technology'),
    ('Retail'),
    ('Finance'),
    ('Healthcare'),
    ('Education'),
    ('Manufacturing'),
    ('Hospitality'),
    ('Entertainment'),
    ('Transportation'),
    ('Agriculture');

-- food_category table
INSERT INTO food_category (category, description)
VALUES
    ('Appetizers', 'Start your meal with delicious appetizers.'),
    ('Main Courses', 'Explore our main course options.'),
    ('Desserts', 'Satisfy your sweet tooth with our desserts.'),
    ('Beverages', 'Quench your thirst with our beverage selection.'),
    ('Salads', 'Enjoy fresh and healthy salads.'),
    ('Pizzas', 'Delicious pizza options for every taste.'),
    ('Burgers', 'Juicy burgers for burger lovers.'),
    ('Sushi', 'Savor the flavors of our sushi dishes.'),
    ('Seafood', 'Fresh seafood options for seafood enthusiasts.'),
    ('Vegetarian', 'Vegetarian dishes for a plant-based diet.');

-- order table
INSERT INTO orders (CLIENT_ID, RETAILER_ID, ADDRESS_ID, TOTAL_PRICE, PAYMENT_ID, STATUS)
VALUES
    (1, 1, 1, 50.99, 1, 'Processing'),
    (2, 2, 2, 35.50, 2, 'Shipped'),
    (3, 3, 3, 75.25, 3, 'Delivered'),
    (4, 4, 4, 42.00, 4, 'Processing'),
    (5, 5, 5, 60.75, 5, 'Shipped'),
    (6, 6, 6, 90.20, 6, 'Processing'),
    (7, 7, 7, 55.60, 7, 'Shipped'),
    (8, 8, 8, 70.00, 8, 'Delivered'),
    (9, 9, 9, 65.30, 9, 'Processing'),
    (10, 10, 10, 48.75, 10, 'Shipped');

-- payment table
INSERT INTO payment (paymentType, paymentStatus)
VALUES
    ('Credit Card', 'Paid'),
    ('PayPal', 'Pending'),
    ('Debit Card', 'Paid'),
    ('Cash', 'Unpaid'),
    ('Venmo', 'Paid'),
    ('Apple Pay', 'Paid'),
    ('Google Pay', 'Pending'),
    ('Bitcoin', 'Paid'),
    ('E-wallet', 'Paid'),
    ('Cheque', 'Pending');

-- product table
INSERT INTO product (product_name, product_description, PRODUCT_PRICE_ID, FOOD_CATEGORY_ID, RETAILER_ID, PRODUCT_INVENTORY_ID, SKU)
VALUES
    ('Product 1', 'Description 1', 1, 1, 1, 1, 'SKU001'),
    ('Product 2', 'Description 2', 2, 2, 2, 2, 'SKU002'),
    ('Product 3', 'Description 3', 3, 3, 3, 3, 'SKU003'),
    ('Product 4', 'Description 4', 4, 4, 4, 4, 'SKU004'),
    ('Product 5', 'Description 5', 5, 5, 5, 5, 'SKU005'),
    ('Product 6', 'Description 6', 6, 6, 6, 6, 'SKU006'),
    ('Product 7', 'Description 7', 7, 7, 7, 7, 'SKU007'),
    ('Product 8', 'Description 8', 8, 8, 8, 8, 'SKU008'),
    ('Product 9', 'Description 9', 9, 9, 9, 9, 'SKU009'),
    ('Product 10', 'Description 10', 10, 10, 10, 10, 'SKU010');

-- product_inventory table
INSERT INTO product_inventory (PRODUCT_ID, quantity)
VALUES
    (1, 100),
    (2, 150),
    (3, 75),
    (4, 200),
    (5, 120),
    (6, 90),
    (7, 180),
    (8, 60),
    (9, 110),
    (10, 170);

-- product_price table
INSERT INTO product_price (PRODUCT_ID, price, for_quantity)
VALUES
    (1, 10.99, true),
    (2, 15.50, true),
    (3, 20.25, false),
    (4, 8.00, true),
    (5, 12.75, true),
    (6, 18.20, false),
    (7, 14.60, true),
    (8, 22.00, false),
    (9, 16.30, true),
    (10, 11.75, true);

-- retailer table
INSERT INTO retailer (retailer_name, retailer_email, telephone_number, USER_ID, COMPANY_TYPE_ID, ADDRESS_ID, unique_number)
VALUES
    ('Retailer 1', 'retailer1@example.com', '123-456-7890', 1, 1, 1, 'UN001'),
    ('Retailer 2', 'retailer2@example.com', '987-654-3210', 2, 2, 2, 'UN002'),
    ('Retailer 3', 'retailer3@example.com', '555-123-4567', 3, 3, 3, 'UN003'),
    ('Retailer 4', 'retailer4@example.com', '999-888-7777', 4, 4, 4, 'UN004'),
    ('Retailer 5', 'retailer5@example.com', '222-333-4444', 5, 5, 5, 'UN005'),
    ('Retailer 6', 'retailer6@example.com', '333-444-5555', 6, 6, 6, 'UN006'),
    ('Retailer 7', 'retailer7@example.com', '444-555-6666', 7, 7, 7, 'UN007'),
    ('Retailer 8', 'retailer8@example.com', '555-666-7777', 8, 8, 8, 'UN008'),
    ('Retailer 9', 'retailer9@example.com', '666-777-8888', 9, 9, 9, 'UN009'),
    ('Retailer 10', 'retailer10@example.com', '777-888-9999', 10, 10, 10, 'UN010');

-- role table
INSERT INTO role (role)
VALUES
    ('Admin'),
    ('User'),
    ('Manager');

-- user table
INSERT INTO user (username, password, ROLE_ID)
VALUES
    ('user1', 'password1', 1),
    ('user2', 'password2', 2),
    ('user3', 'password3', 3),
    ('user4', 'password4', 4),
    ('user5', 'password5', 5),
    ('user6', 'password6', 6),
    ('user7', 'password7', 7),
    ('user8', 'password8', 8),
    ('user9', 'password9', 9),
    ('user10', 'password10', 10);




