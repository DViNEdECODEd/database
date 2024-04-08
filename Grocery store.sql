create database Grocery3;
use Grocery3;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(255),
    phone_number VARCHAR(20)
);

INSERT INTO Customers (customer_id, name, email, phone_number)
VALUES
    (101, 'John doe', 'john.doe@example.com', '+1 (555) 123-4567' ),
    (102, 'divi', 'divi@emailprovider.com', ' 828987-6543' ),
    (103, 'shrav', 'shrav@gmail.com', '+93222-3333'),
    (104, 'yash', 'yash@email.com', '777-8888'),
    (105, 'Aadi', 'aadi@emailprovider.com', '+555444-5555');
select* from Customers;
-- PRODUCT TABLE
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    stock INT,
    category_id INT,
    MRP DECIMAL(10, 2),
    Brand VARCHAR(100)
);

INSERT INTO Product (product_id, product_name, stock, category_id, MRP, Brand)
VALUES
    (501, 'sugar', 10, 2, 1299.99, 'madurika'),
    (502, 'wheat flour', 20, 2, 399.00, 'Aashirvad'),
    (503, 'Edible Oil', 5, 2, 1499.99, 'Sunflow'),
    (504, 'Salt', 30, 2, 49.00, 'Tata'),
    (505, 'Cold Drink', 15, 3, 199.95, 'Sprite'),
    (506, 'fruits', 10, 2, 299.99, 'Fresh farm'),
    (507, 'Bisuit', 20, 2, 399.00, 'Sunfeast'),
    (508, 'Jam', 5, 2, 199.99, 'kissan'),
    (509, 'Rice', 30, 2, 249.00, 'Daawat'),
    (510, 'Ghee', 15, 2, 199.95, 'Patanjali');
    
select* from Product;
-- ORDERS TABLE
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    shipping_date DATE,
    cart_id INT,
    order_amount DECIMAL(10, 2),
    order_date DATE
);

INSERT INTO Orders (order_id, shipping_date, cart_id, order_amount, order_date)
VALUES
    (1001, '2024-03-20', 501, 1299.99, '2024-03-15'),
    (1002, '2024-03-21', 502, 899.00, '2024-03-16'),
    (1003, '2024-03-22', 503, 1499.99, '2024-03-17'),
    (1004, '2024-03-23', 504, 498.00, '2024-03-18'),
    (1005, '2024-03-24', 505, 199.95, '2024-03-19');
select* from Orders;
-- ORDER ITEM TABLE
CREATE TABLE OrderItem (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10, 2),
    total_price DECIMAL(10, 2)
);

INSERT INTO OrderItem (order_item_id, order_id, product_id, quantity, unit_price, total_price)
VALUES
    (1, 1001, 501, 1, 1299.99, 1299.99),
    (2, 1002, 502, 1, 899.00, 899.00),
    (3, 1003, 503, 1, 1499.99, 1499.99),
    (4, 1004, 504, 2, 249.00, 498.00),
    (5, 1005, 505, 1, 199.95, 199.95);
select* from OrderItem;
-- PAYMENT TABLE
CREATE TABLE payment (
    customer_id INT,
    order_id INT,
    payment_id INT,
    payment_mode VARCHAR(50),
    payment_date DATE
);

INSERT INTO payment (customer_id, order_id, payment_id, payment_mode, payment_date)
VALUES
    (101, 1001, 301, 'Credit Card', '2024-03-15'),
    (102, 1002, 302, 'PayPal', '2024-03-16'),
    (103, 1003, 303, 'Cash On Delivery', '2024-03-17'),
    (104, 1004, 304, 'Debit Card', '2024-03-18'),
    (105, 1005, 305, 'Credit Card', '2024-03-19');
select* from payment;
-- PAYMENT HISTORY TABLE
CREATE TABLE payment_history (
    payment_history_id INT PRIMARY KEY,
    payment_id INT,
    data VARCHAR(255),
    status VARCHAR(50),
    transaction_id VARCHAR(100)
);

INSERT INTO payment_history (payment_history_id, payment_id, data, status, transaction_id)
VALUES
    (1, 301, 'Payment successful', 'Completed', 'TRX001'),
    (2, 302, 'Payment pending verification', 'Pending', 'TRX002'),
    (3, 303, 'Payment failed', 'Failed', 'TRX003'),
    (4, 304, 'Payment refunded', 'Refunded', 'TRX004'),
    (5, 305, 'Payment successful', 'Completed', 'TRX005');
select* from payment_history;
-- ADMIN TABLE
CREATE TABLE Admins (
    admin_id INT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(255),
    email VARCHAR(255),
    last_login_date TIMESTAMP
);

INSERT INTO Admins (admin_id, username, password, email)
VALUES
    (1, 'admin1', 'hashed_password_1', 'admin1@example.com'),
    (2, 'admin2', 'hashed_password_2', 'admin2@example.com'),
    (3, 'admin3', 'hashed_password_3', 'admin3@example.com'),
    (4, 'admin4', 'hashed_password_4', 'admin4@example.com'),
    (5, 'admin5', 'hashed_password_5', 'admin5@example.com');
select* from Admins;
-- CART TABLE
CREATE TABLE cart (
    cart_id INT PRIMARY KEY,
    total_item INT,
    grand_total DECIMAL(10, 2),
    customer_id INT
);

INSERT INTO cart (cart_id, total_item, grand_total, customer_id)
VALUES
    (201, 3, 129.97, 101),
    (202, 2, 59.98, 102),
    (203, 1, 99.99, 103),
    (204, 2, 159.98, 104),
    (205, 4, 189.96, 105);
select* from cart;
-- SUPPLIER TABLE
CREATE TABLE Supplier (
    supplier_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(255),
    phone_number VARCHAR(20),
    address VARCHAR(255)
);

INSERT INTO Supplier (supplier_id, name, email, phone_number, address)
VALUES
    (701, 'TechSupply Inc.', 'info@techsupply.com', '+1 (555) 123-4567', '123 Tech Ave, Tech City'),
    (702, 'ElectroWorld Suppliers', 'contact@electroworld.com', '+1 (555) 987-6543', '456 Circuit St, Electronics Town'),
    (703, 'Gadget Source LLC', 'sales@gadgetsource.com', '+1 (555) 222-3333', '789 Innovation Blvd, Gadget Valley'),
    (704, 'Fashion Fabrics Ltd.', 'info@fashionfabrics.com', '+1 (555) 777-8888', '321 Style Ave, Fashion District'),
    (705, 'Sporting Gear Co.', 'sales@sportinggear.com', '+1 (555) 444-5555', '555 Fitness Plaza, Sportstown');
select* from Supplier;
-- REVIEW TABLE
CREATE TABLE review (
    review_id INT PRIMARY KEY,
    description VARCHAR(255),
    ratings DECIMAL(3, 2),
    product_id INT,
    customer_id INT
);

INSERT INTO review (review_id, description, ratings, product_id, customer_id)
VALUES
    (1, 'Great product, very satisfied with the quality!', 4.5, 501, 101),
    (2, 'Fast shipping, item as described.', 4.0, 502, 102),
    (3, 'Good value for the price, would recommend.', 3.8, 503, 103),
    (4, 'Excellent customer service, resolved my issue quickly.', 5.0, 504, 104);
select* from review;
-- WISHLIST TABLE
CREATE TABLE wishlist (
    wishlist_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    added_at TIMESTAMP
);

INSERT INTO wishlist (wishlist_id, customer_id, product_id, added_at)
VALUES
    (1, 101, 501, '2024-03-15 10:00:00'),
    (2, 102, 502, '2024-03-16 11:30:00'),
    (3, 103, 503, '2024-03-17 09:45:00'),
    (4, 104, 504, '2024-03-18 14:20:00'),
    (5, 105, 505, '2024-03-19 16:55:00');
select* from wishlist;
-- SHIPMENT TABLE
CREATE TABLE shipment (
    shipment_id INT PRIMARY KEY,
    arrival_date DATE,
    estimate_date DATE,
    shipment_date DATE,
    order_id INT
);

INSERT INTO shipment (shipment_id, arrival_date, estimate_date, shipment_date, order_id)
VALUES
    (1, '2024-03-20', '2024-03-25', '2024-03-18', 1001),
    (2, '2024-03-21', '2024-03-26', '2024-03-19', 1002),
    (3, '2024-03-22', '2024-03-27', '2024-03-20', 1003),
    (4, '2024-03-23', '2024-03-28', '2024-03-21', 1004),
    (5, '2024-03-24', '2024-03-29', '2024-03-22', 1005);
select* from shipment;
-- CATEGORY TABLE
CREATE TABLE category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50),
    description VARCHAR(255)
);

INSERT INTO category (category_id, category_name, description)
VALUES
(1, 'Electronics', 'Includes all electronic devices such as smartphones, laptops, and cameras.'),
(2, 'Food Items', 'A variety of food products including sugar, wheat flour, edible oil, salt, fruits, biscuits, jam, rice, and ghee.'),
(3, 'Beverages', 'Various beverages including cold drinks.');

select* from category;

-- 1. Find the total number of customers:
SELECT COUNT(*) AS TotalCustomers FROM Customers;
-- 2. List all customers with their email and phone number:
SELECT name, email, phone_number FROM Customers;

-- 3. Find the total stock of all products:
SELECT SUM(stock) AS TotalStock FROM Product;

-- 4. List all products with their MRP and Brand:
SELECT product_name, MRP, Brand FROM Product;

-- 5. Find the total amount of all orders:
SELECT SUM(order_amount) AS TotalOrdersAmount FROM Orders;

-- 6. List all orders with their shipping date and order amount:
SELECT shipping_date, order_amount FROM Orders;

-- 7. Find the total quantity of all order items:
SELECT SUM(quantity) AS TotalOrderItems FROM OrderItem;

-- 8. List all order items with their product name and total price:
SELECT p.product_name, oi.total_price FROM OrderItem oi JOIN Product p ON oi.product_id =
p.product_id;

-- 9. Find the total number of payments made:
SELECT COUNT(*) AS TotalPayments FROM payment;

-- 10. List all payments with their payment mode and payment date:
SELECT payment_mode, payment_date FROM payment;

-- 11. Find the total number of successful payments:
SELECT COUNT(*) AS SuccessfulPayments 
FROM payment_history 
WHERE status = 'Completed';


-- 12. List all admins with their username and email:
SELECT username, email FROM Admins;

-- 13. Find the total number of items in all carts:
SELECT SUM(total_item) AS TotalCartItems FROM cart;

-- 14. List all suppliers with their name and email:
SELECT name, email FROM Supplier;

-- 15. Find the average rating of all products:
SELECT AVG(ratings) AS AverageRating
FROM review;


-- 16. List all reviews with their description and ratings:
SELECT description, ratings FROM review;

-- 17. Find the total number of items in all wishlists:
SELECT COUNT(*) AS TotalWishlistItems FROM wishlist;

-- 18. List all shipments with their arrival date and order id:
SELECT arrival_date, order_id FROM shipment;

-- 19. Find the total number of categories:
SELECT COUNT(*) AS TotalCategories FROM category;

-- 20. List all categories with their category name and description:
SELECT category_name, description FROM category;

-- 21. List all customers with their email and phone number.
SELECT name, email, phone_number FROM Customers;

-- 22 Find the total stock of all products.
SELECT SUM(stock) AS total_stock FROM Product;

-- 23. List all products with a stock less than 10.
SELECT product_name, stock 
FROM Product 
WHERE stock < 10;


-- 24. Find the total amount of orders placed in March 2024.
SELECT SUM(order_amount) AS total_orders FROM Orders WHERE MONTH(order_date) = 3 AND
YEAR(order_date) = 2024;

-- 25 List all customers who have placed an order.
SELECT DISTINCT c.name FROM Customers c JOIN Orders o ON c.customer_id = o.cart_id;

-- 26. Find the total revenue generated from each product category.
SELECT c.category_name, SUM(oi.total_price) AS total_revenue
FROM OrderItem oi
JOIN Product p ON oi.product_id = p.product_id
JOIN category c ON p.category_id = c.category_id
GROUP BY c.category_name;

-- 27. List all customers who have made a payment using Credit Card.
SELECT DISTINCT c.name 
FROM Customers c 
JOIN payment p ON c.customer_id = p.customer_id 
WHERE p.payment_mode = 'Credit Card';


-- 28. Find the total number of successful payments.
SELECT COUNT(*) AS successful_payments
FROM payment_history
WHERE status = 'Completed';


-- 29. List all admins who have never logged in.
SELECT username FROM Admins WHERE last_login_date IS NULL;

-- 30. Find the total number of items in each customer&#39;s cart.
SELECT customer_id, SUM(total_item) AS total_items FROM cart GROUP BY customer_id;

-- 31. List all suppliers who supply products in the &#39;Electronics&#39; category.
SELECT s.name FROM Supplier s JOIN Product p ON s.supplier_id = p.supplier_id WHERE p.category_id =
1;

-- 32 Find the average rating for each product.
SELECT product_id, AVG(ratings) AS average_rating FROM review GROUP BY product_id;

-- 33 List all customers who have added a product to their wishlist.
SELECT DISTINCT c.name FROM Customers c JOIN wishlist w ON c.customer_id = w.customer_id;

-- 34 Find the total number of shipments delivered in March 2024.
SELECT COUNT(*) AS total_deliveries FROM shipment WHERE MONTH(arrival_date) = 3 AND
YEAR(arrival_date) = 2024;

-- 35 List all products that have been reviewed by a customer with a rating of 5.
SELECT p.product_name FROM Product p JOIN review r ON p.product_id = r.product_id WHERE r.ratings
= 5;

-- 36. Find the total number of items in each order.
SELECT order_id, SUM(quantity) AS total_items FROM OrderItem GROUP BY order_id;

-- 37 List all customers who have placed an order for a product from the &#39;Electronics&#39; category.
SELECT DISTINCT c.name FROM Customers c JOIN Orders o ON c.customer_id = o.cart_id JOIN
OrderItem oi ON o.order_id = oi.order_id JOIN Product p ON oi.product_id = p.product_id WHERE
p.category_id = 1;

-- Find the total revenue generated from orders placed in March 2024.
SELECT SUM(order_amount) AS total_revenue FROM Orders WHERE MONTH(order_date) = 3 AND
YEAR(order_date) = 2024;

-- List all products that have been reviewed by a customer with a rating of 4 or higher.
SELECT p.product_name FROM Product p JOIN review r ON p.product_id = r.product_id WHERE r.ratings>4;

-- 40. Find the total number of products in each category.
SELECT category_id, COUNT(*) AS total_products
FROM Product
GROUP BY category_id;



