/*
CREATE DATABASE companyDBtest;
USE companyDBtest;

CREATE TABLE Employees(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
position VARCHAR(50) NOT NULL,
salary decimal(10,2) NOT NULL,
hire_date date NOT NULL
);

ALTER TABLE Employees ADD COLUMN email VARCHAR(50) UNIQUE;

ALTER TABLE Employees RENAME COLUMN position TO job_title;
*/
/*
ALTER TABLE Employees 
DROP COLUMN email;
DESCRIBE Employees;


ALTER TABLE Employees
MODIFY COLUMN salary DECIMAL(12,2);
*/
/*
INSERT INTO Employees
VALUE(default,'Max','Manager',1000000000.09,'2020-01-23')

SELECT * FROM Employees;
ALTER TABLE Employees 
ADD COLUMN rating 
ENUM('Excelent','Good','Normal');
*/
select * from Employees;
