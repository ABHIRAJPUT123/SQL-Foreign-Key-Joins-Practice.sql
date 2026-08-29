/*
=====================================================
FOREIGN KEY PRACTICE
=====================================================

Basic syntax:

CREATE TABLE child_table (
    column1 data_type,
    column2 data_type,
    ...
    CONSTRAINT constraint_name
    FOREIGN KEY (child_column_name)
    REFERENCES parent_table (parent_column_name)
);
*/


-- =====================================================
-- 1. CREATE DATABASE
-- =====================================================

DROP DATABASE IF EXISTS foreigndb;

CREATE DATABASE foreigndb;

USE foreigndb;


-- =====================================================
-- 2. CREATE CUSTOMERS TABLE
-- =====================================================

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);


-- Insert customers

INSERT INTO customers
VALUES
(101, 'John'),
(102, 'Alice'),
(103, 'David'),
(108, 'Raja');


-- View customers

SELECT *
FROM customers;


-- =====================================================
-- 3. CREATE PRODUCTS TABLE
-- =====================================================

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);


-- Insert products

INSERT INTO products
VALUES
(1, 'Laptop'),
(2, 'Mouse'),
(3, 'Keyboard');


-- View products

SELECT *
FROM products;


-- =====================================================
-- 4. CREATE ORDERS TABLE
-- =====================================================

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,

    CONSTRAINT CUSTOMER_ID_FK
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id),

    CONSTRAINT PRODUCT_ID_FK
    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);


-- =====================================================
-- 5. INSERT ORDERS
-- =====================================================

INSERT INTO orders
VALUES
(1001, 101, 1, 9);

INSERT INTO orders
VALUES
(1002, 101, 2, 2);

INSERT INTO orders
VALUES
(1003, 102, 3, 5);


-- View orders

SELECT *
FROM orders;


-- =====================================================
-- 6. FOREIGN KEY CHECK
-- =====================================================

-- This will give an error because customer_id 999
-- does not exist in the customers table.

-- INSERT INTO orders
-- VALUES (1004, 999, 1, 1);


-- This will give an error because product_id 500
-- does not exist in the products table.

-- INSERT INTO orders
-- VALUES (1005, 101, 500, 1);


-- =====================================================
-- 7. LEFT JOIN ORDERS WITH CUSTOMERS
-- =====================================================

SELECT *
FROM orders AS o
LEFT JOIN customers AS c
ON o.customer_id = c.customer_id;


-- =====================================================
-- 8. LEFT JOIN ORDERS WITH PRODUCTS
-- =====================================================

SELECT *
FROM orders AS o
LEFT JOIN products AS p
ON o.product_id = p.product_id;


-- =====================================================
-- 9. JOIN ORDERS WITH BOTH CUSTOMERS AND PRODUCTS
-- =====================================================

SELECT
    o.order_id,
    c.customer_name,
    p.product_name,
    o.quantity
FROM orders AS o
LEFT JOIN customers AS c
ON o.customer_id = c.customer_id
LEFT JOIN products AS p
ON o.product_id = p.product_id;


-- =====================================================
-- 10. INNER JOIN ORDERS WITH CUSTOMERS
-- =====================================================

SELECT *
FROM orders AS o
INNER JOIN customers AS c
ON o.customer_id = c.customer_id;


-- =====================================================
-- 11. INNER JOIN ORDERS WITH PRODUCTS
-- =====================================================

SELECT *
FROM orders AS o
INNER JOIN products AS p
ON o.product_id = p.product_id;


/*
=====================================================
KEY CONCEPTS TO STUDY
=====================================================

1. What is a Foreign Key?
2. Parent Table and Child Table
3. PRIMARY KEY
4. FOREIGN KEY
5. UNIQUE KEY
6. Difference between PRIMARY KEY and UNIQUE KEY
7. What is GROUP BY?
8. What is a Window Function?
9. Difference between GROUP BY and Window Functions
10. LEFT JOIN
11. INNER JOIN
=====================================================
*/