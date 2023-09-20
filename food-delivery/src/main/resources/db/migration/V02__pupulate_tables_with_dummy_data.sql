-- insert 10 dummy records in each table

-- role table
INSERT INTO roles (role_id,role)
VALUES
    (1,'Admin'),
    (2,'User'),
    (3,'Manager');


-- user table
INSERT INTO users (USER_ID, username, password, ROLE_ID)
VALUES
    (1, 'user1', 'password1', 1),
    (2, 'user2', 'password2', 2),
    (3, 'user3', 'password3', 1),
    (4, 'user4', 'password4', 3),
    (5, 'user5', 'password5', 2),
    (6, 'user6', 'password6', 1),
    (7, 'user7', 'password7', 3),
    (8, 'user8', 'password8', 2),
    (9, 'user9', 'password9', 1),
    (10, 'user10', 'password10', 3);


-- company_type table
INSERT INTO company_type (company_type_id,companyType)
VALUES
    (1,'Technology'),
    (2,'Retail'),
    (3,'Finance'),
    (4,'Healthcare'),
    (5,'Education'),
    (6,'Manufacturing'),
    (7,'Hospitality'),
    (8,'Entertainment'),
    (9,'Transportation'),
    (10,'Agriculture');


--  address table
INSERT INTO address (address_id, street, number, city, postal_code, country, telephone, mobile)
VALUES
    (1, '123 Main St', 'Apt 101', 'New York', '10001', 'USA', '555-123-4567', '555-987-6543'),
    (2, '456 Elm St', 'Unit 202', 'Los Angeles', '90001', 'USA', '555-111-2222', '555-333-4444'),
    (3, '789 Oak St', 'Suite 303', 'Chicago', '60601', 'USA', '555-777-8888', '555-999-0000'),
    (4, '101 Pine St', 'Apt 404', 'San Francisco', '94101', 'USA', '555-555-5555', '555-555-5555'),
    (5, '202 Cedar St', 'Unit 505', 'Miami', '33101', 'USA', '555-666-7777', '555-888-9999'),
    (6, '303 Maple St', 'Suite 606', 'Dallas', '75201', 'USA', '555-222-3333', '555-444-5555'),
    (7, '404 Birch St', 'Apt 707', 'Houston', '77001', 'USA', '555-444-3333', '555-333-2222'),
    (8, '505 Walnut St', 'Unit 808', 'Seattle', '98101', 'USA', '555-999-8888', '555-888-7777'),
    (9, '606 Spruce St', 'Suite 909', 'Atlanta', '30301', 'USA', '555-123-9876', '555-456-7890'),
    (10, '707 Ash St', 'Apt 1010', 'Phoenix', '85001', 'USA', '555-333-1111', '555-777-2222');

-- client table
INSERT INTO client (client_id, client_name, client_family_name, email, address_id)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', 1),
    (2, 'Alice', 'Smith', 'alice.smith@example.com', 2),
    (3, 'Bob', 'Johnson', 'bob.johnson@example.com', 3),
    (4, 'Emily', 'Davis', 'emily.davis@example.com', 4),
    (5, 'Michael', 'Brown', 'michael.brown@example.com', 5),
    (6, 'Olivia', 'Wilson', 'olivia.wilson@example.com', 6),
    (7, 'William', 'Martinez', 'william.martinez@example.com', 7),
    (8, 'Sophia', 'Lopez', 'sophia.lopez@example.com', 8),
    (9, 'Daniel', 'Garcia', 'daniel.garcia@example.com', 9),
    (10, 'Ella', 'Harris', 'ella.harris@example.com', 10);

-- food_category table
INSERT INTO food_category (food_category_id,category, description)
VALUES
    (1,'Appetizers', 'Start your meal with delicious appetizers.'),
    (2,'Main Courses', 'Explore our main course options.'),
    (3,'Desserts', 'Satisfy your sweet tooth with our desserts.'),
    (4,'Beverages', 'Quench your thirst with our beverage selection.'),
    (5,'Salads', 'Enjoy fresh and healthy salads.'),
    (6,'Pizzas', 'Delicious pizza options for every taste.'),
    (7,'Burgers', 'Juicy burgers for burger lovers.'),
    (8,'Sushi', 'Savor the flavors of our sushi dishes.'),
    (9,'Seafood', 'Fresh seafood options for seafood enthusiasts.'),
    (10,'Vegetarian', 'Vegetarian dishes for a plant-based diet.');

    -- product_price table
        INSERT INTO product_price (product_price_id, price, for_quantity)
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
INSERT INTO retailer (retailer_id, retailerName, retailerEmail, telephoneNumber, company_type_id, address_id, uniqueNumber)
VALUES
    (1, 'Retailer 1', 'retailer1@example.com', '1234567890', 1, 1, 'UN1'),
    (2, 'Retailer 2', 'retailer2@example.com', '9876543210', 2, 2, 'UN2'),
    (3, 'Retailer 3', 'retailer3@example.com', '5555555555', 3, 3, 'UN3'),
    (4, 'Retailer 4', 'retailer4@example.com', '1111111111', 4, 4, 'UN4'),
    (5, 'Retailer 5', 'retailer5@example.com', '9999999999', 5, 5, 'UN5'),
    (6, 'Retailer 6', 'retailer6@example.com', '7777777777', 6, 6, 'UN6'),
    (7, 'Retailer 7', 'retailer7@example.com', '8888888888', 7, 7, 'UN7'),
    (8, 'Retailer 8', 'retailer8@example.com', '4444444444', 8, 8, 'UN8'),
    (9, 'Retailer 9', 'retailer9@example.com', '2222222222', 9, 9, 'UN9'),
    (10, 'Retailer 10', 'retailer10@example.com', '6666666666', 10, 10, 'UN10');

-- product table
INSERT INTO product (PRODUCT_ID, product_name, product_description, PRODUCT_PRICE_ID, FOOD_CATEGORY_ID, RETAILER_ID, SKU)
VALUES
    (1, 'Product 1', 'Description 1', 1, 1, 1, 'SKU1'),
    (2, 'Product 2', 'Description 2', 2, 2, 2, 'SKU2'),
    (3, 'Product 3', 'Description 3', 3, 3, 3, 'SKU3'),
    (4, 'Product 4', 'Description 4', 4, 4, 4, 'SKU4'),
    (5, 'Product 5', 'Description 5', 5, 5, 5, 'SKU5'),
    (6, 'Product 6', 'Description 6', 6, 6, 6, 'SKU6'),
    (7, 'Product 7', 'Description 7', 7, 7, 7, 'SKU7'),
    (8, 'Product 8', 'Description 8', 8, 8, 8, 'SKU8'),
    (9, 'Product 9', 'Description 9', 9, 9, 9, 'SKU9'),
    (10, 'Product 10', 'Description 10', 10, 10, 10, 'SKU10');

-- product_inventory table
INSERT INTO product_inventory (product_inventory_id, quantity)
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

-- payment table
INSERT INTO payment (payment_id,paymentType, paymentStatus)
VALUES
    (1,'Credit Card', 'Paid'),
    (2,'PayPal', 'Pending'),
    (3,'Debit Card', 'Paid'),
    (4,'Cash', 'Unpaid'),
    (5,'Venmo', 'Paid'),
    (6,'Apple Pay', 'Paid'),
    (7,'Google Pay', 'Pending'),
    (8,'Bitcoin', 'Paid'),
    (9,'E-wallet', 'Paid'),
    (10,'Cheque', 'Pending');

-- order table
INSERT INTO orders (order_id, client_id, retailer_id, address_id, total_price, payment_id, status)
VALUES
    (1, 1, 1, 1, 100.00, 1, 'Pending'),
    (2, 2, 2, 2, 75.50, 2, 'Shipped'),
    (3, 3, 3, 3, 200.25, 3, 'Delivered'),
    (4, 4, 4, 4, 50.00, 4, 'Pending'),
    (5, 5, 5, 5, 120.75, 5, 'Shipped'),
    (6, 6, 6, 6, 180.00, 6, 'Delivered'),
    (7, 7, 7, 7, 90.50, 7, 'Pending'),
    (8, 8, 8, 8, 60.25, 8, 'Shipped'),
    (9, 9, 9, 9, 150.00, 9, 'Delivered'),
    (10, 10, 10, 10, 95.75, 10, 'Pending');