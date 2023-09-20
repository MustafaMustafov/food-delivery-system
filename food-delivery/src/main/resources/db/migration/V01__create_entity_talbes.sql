-- create role table
CREATE TABLE if not exists roles (
    ROLE_ID BIGINT PRIMARY KEY,
    role VARCHAR(255)
);

-- create user table
CREATE TABLE if not exists users (
    USER_ID BIGINT PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255),
    ROLE_ID BIGINT,
    FOREIGN KEY (ROLE_ID) REFERENCES roles (ROLE_ID)
);

-- create company_type table
CREATE TABLE if not exists company_type (
    COMPANY_TYPE_ID BIGINT PRIMARY KEY,
    companyType VARCHAR(255)
);

-- create address table
CREATE TABLE IF NOT EXISTS address (
    address_id BIGINT PRIMARY KEY,
    street VARCHAR(255),
    number VARCHAR(10),
    city VARCHAR(255),
    postal_code VARCHAR(10),
    country VARCHAR(255),
    telephone VARCHAR(20),
    mobile VARCHAR(20)
);

-- create client table
CREATE TABLE if not exists client (
     client_id BIGINT PRIMARY KEY,
        client_name VARCHAR(255) NOT NULL,
        client_family_name VARCHAR(255),
        email VARCHAR(255),
        address_id BIGINT,
        FOREIGN KEY (address_id) REFERENCES address (address_id)
);

-- create food_category table
CREATE TABLE if not exists food_category (
    FOOD_CATEGORY_ID BIGINT PRIMARY KEY,
    category VARCHAR(255),
    description VARCHAR(255)
);

-- create product_price table
 CREATE TABLE IF NOT EXISTS product_price (
     product_price_id BIGINT PRIMARY KEY,
     price DOUBLE PRECISION,
     for_quantity BOOLEAN
 );

 -- create retailer table
 CREATE TABLE IF NOT EXISTS retailer (
     retailer_id BIGINT PRIMARY KEY,
     retailerName VARCHAR(255) NOT NULL,
     retailerEmail VARCHAR(255),
     telephoneNumber VARCHAR(20),
     company_type_id BIGINT,
     address_id BIGINT,
     uniqueNumber VARCHAR(50),
     FOREIGN KEY (company_type_id) REFERENCES company_type (COMPANY_TYPE_ID),
     FOREIGN KEY (address_id) REFERENCES address (address_id)
 );

-- create product table
CREATE TABLE if not exists product (
    PRODUCT_ID BIGINT PRIMARY KEY,
    product_name VARCHAR(255),
    product_description VARCHAR(255),
    PRODUCT_PRICE_ID BIGINT,
    FOOD_CATEGORY_ID BIGINT,
    RETAILER_ID BIGINT,
    SKU VARCHAR(50),
    FOREIGN KEY (PRODUCT_PRICE_ID) REFERENCES product_price (PRODUCT_PRICE_ID),
    FOREIGN KEY (FOOD_CATEGORY_ID) REFERENCES food_category (FOOD_CATEGORY_ID),
    FOREIGN KEY (RETAILER_ID) REFERENCES retailer (RETAILER_ID)
);

-- create product_inventory table
CREATE TABLE IF NOT EXISTS product_inventory (
    product_inventory_id BIGINT PRIMARY KEY,
    product_id BIGINT,
    quantity INT,
    FOREIGN KEY (product_id) REFERENCES product (product_id)
);

-- create payment table
CREATE TABLE if not exists payment (
    PAYMENT_ID BIGINT PRIMARY KEY,
    paymentType VARCHAR(255),
    paymentStatus VARCHAR(255)
);

-- create orders table
CREATE TABLE IF NOT EXISTS orders (
    order_id BIGINT PRIMARY KEY,
    client_id BIGINT,
    retailer_id BIGINT,
    address_id BIGINT,
    total_price DOUBLE PRECISION,
    payment_id BIGINT,
    status VARCHAR(255),
    FOREIGN KEY (client_id) REFERENCES client (client_id),
    FOREIGN KEY (retailer_id) REFERENCES retailer (retailer_id),
    FOREIGN KEY (address_id) REFERENCES address (address_id),
    FOREIGN KEY (payment_id) REFERENCES payment (payment_id)
);



