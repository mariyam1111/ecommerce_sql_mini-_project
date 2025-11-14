USE master;
GO
IF DB_ID('EcommerceAnalytics') IS NULL
    CREATE DATABASE EcommerceAnalytics;
GO

USE EcommerceAnalytics;
GO

DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;
GO

-- Customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50),
    join_date DATE
);
GO

-- Products
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
GO

-- Orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    CONSTRAINT FK_orders_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    CONSTRAINT FK_orders_product FOREIGN KEY (product_id) REFERENCES products(product_id)
);
GO

-- Payments
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(20),
    payment_status VARCHAR(20),
    amount DECIMAL(10,2),
    CONSTRAINT FK_payments_order FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
GO


-- Customers (10 sample rows)
INSERT INTO customers (customer_id, name, city, join_date) VALUES
(1,'Alice','Delhi','2023-01-10'),
(2,'Bob','Mumbai','2023-02-15'),
(3,'Charlie','Bangalore','2023-03-05'),
(4,'David','Chennai','2023-01-20'),
(5,'Eva','Hyderabad','2023-02-28'),
(6,'Frank','Delhi','2023-03-12'),
(7,'Grace','Mumbai','2023-04-01'),
(8,'Hannah','Bangalore','2023-04-10'),
(9,'Ian','Chennai','2023-04-20'),
(10,'Judy','Hyderabad','2023-05-01');
GO

-- Products (10 sample rows)
INSERT INTO products (product_id, name, category, price) VALUES
(1,'Smartphone','Electronics',15000),
(2,'Laptop','Electronics',45000),
(3,'Headphones','Electronics',2000),
(4,'T-Shirt','Apparel',500),
(5,'Jeans','Apparel',1200),
(6,'Shoes','Footwear',2500),
(7,'Watch','Accessories',3000),
(8,'Bag','Accessories',1500),
(9,'Blender','Home Appliances',3500),
(10,'Microwave','Home Appliances',7000);
GO

-- Orders (20 sample rows)
INSERT INTO orders (order_id, customer_id, product_id, order_date, quantity) VALUES
(1,1,1,'2023-06-01',1),
(2,2,2,'2023-06-03',1),
(3,3,3,'2023-06-05',2),
(4,4,4,'2023-06-07',3),
(5,5,5,'2023-06-10',1),
(6,6,6,'2023-06-12',2),
(7,7,7,'2023-06-15',1),
(8,8,8,'2023-06-17',2),
(9,9,9,'2023-06-20',1),
(10,10,10,'2023-06-22',1),
(11,1,2,'2023-06-25',1),
(12,2,3,'2023-06-27',1),
(13,3,4,'2023-06-28',2),
(14,4,5,'2023-06-29',1),
(15,5,6,'2023-06-30',1),
(16,6,7,'2023-07-01',2),
(17,7,8,'2023-07-02',1),
(18,8,9,'2023-07-03',1),
(19,9,10,'2023-07-04',1),
(20,10,1,'2023-07-05',2);
GO

-- Payments (20 sample rows)
INSERT INTO payments (payment_id, order_id, payment_method, payment_status, amount) VALUES
(1,1,'Credit Card','Success',15000),
(2,2,'Debit Card','Success',45000),
(3,3,'UPI','Success',4000),
(4,4,'Cash','Success',1500),
(5,5,'Credit Card','Success',1200),
(6,6,'Debit Card','Success',5000),
(7,7,'UPI','Failed',3000),
(8,8,'Credit Card','Success',3000),
(9,9,'Cash','Success',3500),
(10,10,'Credit Card','Success',7000),
(11,11,'Debit Card','Success',45000),
(12,12,'UPI','Success',2000),
(13,13,'Credit Card','Success',1000),
(14,14,'Cash','Success',1200),
(15,15,'Debit Card','Success',5000),
(16,16,'UPI','Success',6000),
(17,17,'Credit Card','Success',1500),
(18,18,'Cash','Success',3500),
(19,19,'Credit Card','Success',7000),
(20,20,'Debit Card','Success',30000);
GO
