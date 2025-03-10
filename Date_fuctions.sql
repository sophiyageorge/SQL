USE salesdb;
SELECT 
	order_date ,
    '2020-10-02',
    NOW() AS today,
    DAY(order_date) AS day,
    MONTH(order_date) AS month,
    YEAR(order_date) AS year,
    MINUTE(NOW()) AS minute,
    SECOND(NOW()) AS second
,    HOUR(NOW()) AS hour,
QUARTER(NOW())
From orders;

-- EXTRACT() function
SELECT EXTRACT(year FROM order_date) AS year FROM orders;

-- DAYNAME()
SELECT 
	dayname(order_date) AS day,
    monthname(order_date) AS month
 FROM orders;
 
 -- WEEKDAY
 SELECT 
	order_date,
    WEEK(NOW()) AS weekno,
    DAYNAME(NOW()) AS WEEKname,
	WEEKday(NOW()) AS WEEKDAY,
    dayofweek(NOW()) AS DAYofweek,
    dayofmonth(order_date) AS month,
    dayofyear(order_date) AS year
 FROM orders;
 -- how many orders were placed each year?
 SELECT 
	YEAR(order_date) AS year,
    COUNT(*) AS nooforders 
 FROM orders
 GROUP BY YEAR(order_date); 
 
 --  in each month
 SELECT MONTHNAME(order_date) AS month,
		COUNT(*) noOfOrders
FROM orders
GROUP BY MONTHNAME(order_date);
 
  -- all orders that were placed during the month of janvary
  
  SELECT * FROM orders
  WHERE MONTH(order_date)=2 ;
  
   -- FORMAT
   SELECT DATE_FORMAT(order_date,'%Y/%m/%d %b') FROM orders;
   
   SELECT DATE_FORMAT(now(),'Day %a %b %Y %H:%i:%s %p') FROM orders;


-- CONVERT
SELECT CONVERT('123',SIGNED) AS t;
SELECT CONVERT('2020-01-12',DATE);
-- cast
SELECT CAST('2020-3-3'  AS DATE) ;

-- calculations
SELECT 
		DATE_ADD(now(), INTERVAL 3 day);
        
SELECT DATEDIFF(now(),order_date)
FROM orders;

SELECT MONTH(order_date),
			AVG(DATEDIFF(now(),order_date))
FROM orders
GROUP BY MONTH(order_date)