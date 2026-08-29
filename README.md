# SQL Foreign Key & Joins Practice

This repository contains my MySQL practice queries based on foreign keys, primary keys, joins, and relational tables.

## Database

- Database: `foreigndb`

## Tables

- `customers`
- `products`
- `orders`

## SQL Topics Covered

- PRIMARY KEY
- FOREIGN KEY
- Parent Table
- Child Table
- Foreign Key Constraints
- LEFT JOIN
- INNER JOIN
- Joining Multiple Tables
- Referential Integrity

## Foreign Key Practice

The `orders` table contains foreign keys that reference:

- `customers(customer_id)`
- `products(product_id)`

This ensures that an order can only reference an existing customer and product.

## JOIN Practice

The following joins are practiced:

- Orders with Customers
- Orders with Products
- Orders with Customers and Products
- INNER JOIN
- LEFT JOIN

## Constraint Practice

The repository also contains examples showing how foreign key constraints prevent inserting invalid customer IDs and product IDs.

## Concepts to Study

- What is a Foreign Key?
- What is a Primary Key?
- Difference between Primary Key and Unique Key
- What is GROUP BY?
- What are Window Functions?
- Difference between GROUP BY and Window Functions
- Difference between INNER JOIN and LEFT JOIN

## Tools Used

- MySQL
- MySQL Workbench
- GitHub

## Purpose

This repository is part of my SQL learning and practice journey. It demonstrates my understanding of relational tables, foreign keys, constraints, and joins.
