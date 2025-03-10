SELECT * FROM orders;

SELECT customer_id,
CASE 
	WHEN SUM(amount)>500 THEN 'VIP'
    WHEN SUM(amount)>300 THEN 'Regular'
    WHEN SUM(amount)>50 THEN 'Low spender'
END AS customer_type
FROM orders
GROUP BY customer_id;