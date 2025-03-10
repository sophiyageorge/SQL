USE companydb;
--  Find each employee’s salary rank within their department (DENSE_RANK())
/*SELECT department,SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary)>500000;*/

SELECT name,department ,salary,
dense_rank() over(partition by department order by salary DESC) AS salary_rank
FROM employees;