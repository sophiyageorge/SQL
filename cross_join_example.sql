
CREATE TABLE Products
(product_id INT,
product_name VARCHAR(50)
);

CREATE TABLE Color
(
color_id INT,
color_name VARCHAR(50)
);

INSERT INTO Products
values(1,"laptop"),(2,"mouse"),(3,"keyboard");

INSERT INTO Color
values(1,"red"),(2,"black"),(3,"blue");

SELECT * FROM Products CROSS JOIN Color;