CREATE TABLE Test
(
id INT ,
name VARCHAR(50),
CONSTRAINT pk_person PRIMARY KEY (id)
);

CREATE TABLE test2
(
id INT ,
name VARCHAR(50),
person_id INT,
CONSTRAINT fk_person FOREIGN KEY(person_id) REFERENCES Test(id)
)
;
DROP TABLE Test;
DROP TABLE test2;

CREATE TABLE employees1(
id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
Phone VARCHAR(10) DEFAULT 0000000000,
age INT CHECK (age>18),
email VARCHAR(20) UNIQUE,
person_id INT,
FOREIGN KEY (person_id) REFERENCES Test(id)

);
DROP TABLE employees1;