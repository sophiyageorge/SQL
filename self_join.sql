
/*
CREATE TABLE employees(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
department VARCHAR(50),
manager_id INT NULL,
FOREIGN KEY (manager_id) REFERENCES employees(id) ON DELETE SET NULL

);
*/

/*
INSERT INTO employees (name,department,manager_id)VALUES
('Alice','HR',NULL),
('Bob','HR',1),
('Charlie','IT',1),
('David','IT',3),
('Eve','Finance',1),
('Frank','Finance',5);
*/
/*
SELECT * FROM employees;
*/
/* select employees with their managers*/
/*
SELECT 
	e1.name AS employee,
    e2.name AS manager
FROM employees AS e1
LEFT JOIN employees AS e2
ON e1.manager_id=e2.id;
*/
/* Find employees who have No Manager(Top Level Employees)*/
/*
SELECT name
FROM employees 
WHERE manager_id IS NULL;
*/

/* Find Employees who are managers*/
/*
SELECT DISTINCT e2.name AS manager
FROM employees AS e1
INNER JOIN employees AS e2
ON e1.manager_id=e2.id
*/

/*find employees in the same department 
who report to the  same manager*/
/*
SELECT e1.name AS emp1,
		e2.name AS emp2,
        e1.department,
        e1.manager_id
        
 FROM employees AS e1
INNER JOIN employees AS e2
ON e1.manager_id=e2.manager_id
AND e1.id <> e2.id

*/
/* Find Employees who report to a specific Manager */
/*
SELECT e1.name AS employee
FROM employees AS e1
INNER JOIN employees AS e2
ON e1.manager_id=e2.id
WHERE e2.name='Alice';
*/
/*Find employees with more than one direct report*/
SELECT e2.name AS manage,
		COUNT(e1.id) AS num_of_reports
FROM employees AS e1
INNER JOIN employees AS e2
ON e1.manager_id=e2.id
GROUP BY e2.name
HAVING COUNT(e1.id)>1;