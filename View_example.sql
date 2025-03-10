USE salesdb;
SELECT * FROM orders; 

CREATE VIEW High_orders AS
SELECT * FROM orders
WHERE amount>200;

SELECT * FROM High_orders;

CREATE OR REPLACE VIEW High_orders AS
SELECT * FROM orders
WHERE amount>=50; 