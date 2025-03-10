/*
CREATE DATABASE salesdb; */
USE salesdb;
/*
CREATE TABLE customer(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
city VARCHAR(50)
);
*/
/*
CREATE TABLE orders(
id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
amount DECIMAL(10,2),
order_date DATE,
FOREIGN KEY (customer_id) REFERENCES customer(id)

);
*/
/**
INSERT INTO customer(name,city)
values('Alice','New York'),
('Bob','Los Angeles'),
('Charlie','Chicago'),
('David','Houston')
;
*/
/*
SELECt * FROM customer;
INSERT INTO orders(customer_id,amount,order_date) VALUES
(1,250.50,'2024-02-01'),
(1,100,'2024-02-24'),
(2,300.75,'2024-03-10'),
(4,50.25,'2024-02-15');

SELECT * FROM orders;
*/

/*SQL JOINS */
/* INNER JOINS*/
/*
SELECT c.id,c.name,o.id,o.amount FROM customer as c
INNER JOIN orders as o
ON c.id=o.customer_id

*/
/*LEFT JOIN*/
/*
SELECT 
	c.id,
    c.name,
    o.id,
    o.amount
FROM customer AS c
LEFT JOIN orders AS o
ON c.id=o.customer_id
*/
/* RIGHT JOIN */
/*
 SELECT 
	c.id,
    c.name,
    o.id,
    o.amount
FROM customer AS c
RIGHT JOIN orders AS o
ON c.id=o.customer_id
*/
/* FULL JOIN*/
SELECT 
	c.id,
    c.name,
    o.id,
    o.amount
FROM customer AS c
LEFT JOIN orders AS o 
ON c.id=o.customer_id
UNION
SELECT 
	c.id,
    c.name,
    o.id,
    o.amount
FROM customer AS c
RIGHT JOIN orders AS o
ON c.id=o.customer_id





