SELECT * FROM salesdb.employees;
SELECT id FROM salesdb.employees WHERE salary=50000;

CREATE INDEX ind ON salesdb.employees(experience);
SELECT experience FROM salesdb.employees;
SELECT name FROM salesdb.employees;