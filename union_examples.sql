-- SET operations UNION,UNION ALL,INTERCEPT
SELECT name from salesdb.customer
UNION
SELECT name FROM salesdb.employees; 


SELECT name from salesdb.customer
UNION ALL
SELECT name FROM salesdb.employees; 

-- INTERCEPT 
SELECT name from salesdb.customer
WHERE name IN(
SELECT name FROM salesdb.employees) 
;
-- EXCEPT
 SELECT name from salesdb.employees
WHERE name NOT IN(
SELECT name FROM salesdb.customer) 