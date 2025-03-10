SELECT * FROM salesdb.orders;
SELECT * FROM salesdb.customer;
USE salesdb;
CREATE TABLE new_customer (
id INT,
name VARCHAR(50),
city VARCHAR(20)
);
SET SQL_SAFE_UPDATES = 0;
INSERT INTO new_customer(id,name,city)
SELECT id,name,city FROM customer WHERE id IN (SELECT customer_id FROM orders); 

SELECT * FROM new_customer;

ALTER TABLE new_customer ADD COLUMN last_order_date DATE;

UPDATE new_customer SET last_order_date =
--  '2020-02-20'
 (SELECT order_date FROM orders WHERE orders.customer_id=new_customer.id  ORDER BY order_date DESC LIMIT 1)
WHERE id IN (SELECT DISTINCT customer_id FROM orders);

DELETE FROM customer WHERE id NOT IN (SELECT customer_id FROM orders);


-- ;

