 --  1. 
 USE salesdb;
SELECT name,salary
FROM employees 
WHERE salary>( SELECT AVG(salary) FROM employees)
;
SELECt * FROM employees;

-- cross join
SELECT * FROM customer
CROSS JOIN orders
 