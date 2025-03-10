#CREATE DATABASE companyDB;
USE companyDB;

-- Create Table Employees--
/*
CREATE TABLE employees(
Id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
age INT,
salary INT,
departmentmt VARCHAR(100),
hire_date DATE)
*/

-- Insert into employees--
/*
INSERT INTO employees(Id,name,age,salary,departmentmt,hire_date)
VALUE (default,"Max",25,300000,'Accounts','2024-02-20'),
(default,"curie",32,600000,'HR','2020-03-22'),
(default,"Henri",35,200000,'Sales','2022-04-12'),
(default,"Pierre",42,400000,'IT','2021-03-24'),
(default,"Irene",25,100000,'IT','2025-01-09'),
(default,"Catrin",26,100000,'Sales','2024-12-29'),
(default,"John",32,650000,'HOD','2021-03-02');
*/

/*
SELECT * FROM employees
WHERE salary > 300000;

*/
/*
SELECT * FROM employees
ORDER BY salary DESC;
*/

/*
SELECT * FROM employees
ORDER BY age ASC;
*/

/*
SELECT DISTINCT departmentmt 
FROM employees;
*/
/*
SELECT salary 
FROM employees
ORDER BY salary DESC LIMIT 1;

SELECT * FROM employees
LIMIT 4;

*/

#ALTER TABLE employees RENAME COLUMN  departmentmt TO department
/*
SELECT name,salary
FROM employees

SELECT * FROM employees
WHERE department='HR'



SELECT * FROM employees
WHERE salary >200000


SELECT * FROM employees 
WHERE hire_date <'2022-01-01'


SELECT * FROM employees
ORDER BY salary DESC


SELECT DISTINCT department
FROM employees


SELECT * FROM employees
ORDER BY salary DESC LIMIT 3

ADD new column

ALTER TABLE employees ADD COLUMN bonus INT; 


SELECT * FROM employees;

INSERT INTO employees 
VALUES (default,'Nichu',31,400000,'IT','2020-03-24',null)


SELECt * from employees
WHERE bonus IS null;


SELECT * FROM employees 
WHERE salary BETWEEN 100000 AND 700000

SELECT * FROM employees
WHERE department='IT' OR department='Sales'


SELECT * FROM employees 
WHERE department IN ('IT','Sales')


SELECT * FROM employees
WHERE salary+100000 >400000

SET SQL_SAFE_UPDATES = 0;
UPDATE employees 
SET salary = salary*1.10
WHERE department ='IT' 


SELECT * FROM employees

DELETE FROM employees
WHERE department='HR'
*/
/*
CREATE TABLE Students(
id INT PRIMARY KEY auto_increment,
name VARCHAR(50),
Maths FLOAT,
English FLOAT,
Malayalam FLOAT
);

INSERT INTO Students 
values(default,'Sofi',90,80,70),
(default,'soni',70,60,70),
(default,'sona',80,70,80);
*/
select * from Students
where Maths<80 and English<70;





































































































































































































































































































































