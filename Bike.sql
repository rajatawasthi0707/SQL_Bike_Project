-- USE bike

-- 1)Retrieve all columns from the customers table.

SELECT * FROM customers;

-- 2) Find the details of customers from the NY.

SELECT * FROM customers
WHERE state = 'NY';

-- 3) List all orders placed after January 1, 2016.

SELECT COUNT(*) FROM orders
WHERE order_date > '2016-12-31';

-- 4) Retrieve the top 5 most expensive products.
SELECT * FROM products
ORDER BY list_price DESC
LIMIT 5;

-- 5)Find all employees whose first name starts with 'J'.
SELECT * FROM staffs
WHERE first_name LIKE 'J%';

-- 6)Get all products with a price between $500 and $2000.

SELECT * FROM products
WHERE list_price BETWEEN 500 AND 2000;

-- 7)Retrieve all orders with a total amount greater than $1000.

SELECT * FROM order_items
WHERE list_price >1000;

-- 8) Find customers whose last name contains 'son'.

SELECT * FROM customers
WHERE last_name LIKE '%son%';

-- 9)Count the total number of customers.

SELECT COUNT(*) FROM customers;

-- 10)Find the average price of all products.

SELECT round(AVG(list_price),2) FROM products;

-- 11)Get the most expensive product in each category.
SELECT category_id,MAX(list_price) FROM products
GROUP BY category_id
ORDER BY category_id DESC;

-- 12)Find the total revenue generated from sales.

-- 13) Count the number of orders placed in each month.
SELECT MONTH(order_date),COUNT(*) FROM orders
GROUP BY MONTH(order_date);

-- 14) Find the total number of products sold.

SELECT COUNT(*) FROM products;

-- 15) Calculate the average order amount per customer.
SELECT * FROM orders;

-- 16)Retrieve all orders along with customer details.

SELECT o.order_id,c.customer_id,c.first_name FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id;

-- 17)Find all products sold along with their order details.
SELECT * FROM products p
LEFT JOIN order_items o
ON p.product_id = o.product_id;

-- 18)Get the names of customers who placed at least one order.
SELECT c.customer_id,c.first_name FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;













