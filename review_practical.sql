CREATE DATABASE review;
USE review;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE OrderDetails (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);



INSERT INTO Customers (customer_id, name, email, city, country) VALUES
(1, 'Alice Johnson', 'alice@example.com', 'New York', 'USA'),
(2, 'Bob Smith', 'bob@example.com', 'Los Angeles', 'USA'),
(3, 'Charlie Brown', 'charlie@example.com', 'Chicago', 'USA'),
(4, 'David Lee', 'david@example.com', 'Houston', 'USA'),
(5, 'Emma Davis', 'emma@example.com', 'London', 'UK');



INSERT INTO Products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 1200.00),
(2, 'Smartphone', 'Electronics', 800.00),
(3, 'Headphones', 'Accessories', 150.00),
(4, 'Desk Chair', 'Furniture', 300.00),
(5, 'Monitor', 'Electronics', 250.00);



INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(101, 1, '2025-03-01', 1450.00),
(102, 2, '2025-03-02', 800.00),
(103, 3, '2025-03-03', 1700.00),
(104, 1, '2025-03-05', 300.00),
(105, 4, '2025-03-06', 250.00);

-- Insert into OrderDetails

INSERT INTO OrderDetails (order_detail_id, order_id, product_id, quantity, unit_price) VALUES
(201, 101, 1, 1, 1200.00),
(202, 101, 3, 2, 125.00),
(203, 102, 2, 1, 800.00),
(204, 103, 1, 1, 1200.00),
(205, 103, 5, 2, 250.00),
(206, 104, 4, 1, 300.00),
(207, 105, 5, 1, 250.00);

SELECT * FROM customers;
SELECT * FROM orderdetails;
SELECT * FROM orders;
SELECT * FROM products;

	-- Total Sales by Country
-- 	•	Retrieve the total sales (SUM(total_amount)) per country.
	-- •	Use GROUP BY and filter out countries where total sales are below 5000 
SELECT SUM(total_amount) AS TotalAmount,
country
 FROM customers AS c
INNER JOIN orders AS o ON c.customer_id=o.customer_id
GROUP BY c.country;

	-- 2.	Top 3 Most Purchased Products
	-- •	Use JOIN to get product names and total quantity sold (SUM(quantity)).
	-- •	Sort by quantity sold in descending order and limit the result to the top 3 
    
    SELECT * FROM  orderdetails;
    
SELECT p.product_id,SUM(quantity) FROM products AS p
INNER JOIN  orderdetails AS o 
ON p.product_id=o.product_id
GROUP BY p.product_id 
ORDER BY SUM(o.quantity) DESC LIMIT 3;

-- Customers with No Orders
-- 	•	Find customers who have never placed an order using LEFT JOIN.
-- 	4.	Highest Order Value Per Customer
-- 	•	Retrieve each customer’s name and their highest order amount.
-- 	5.	Create a View for Monthly Sales Summary
-- 	•	Create a view that summarizes total sales per month (YEAR(order_date), MONTH(order_date)).
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM customers c
-- LEFT  JOIN orders o on c.customer_id=o.customer_id
WHERE customer_id  NOT IN(SELECT customer_id FROM orders)