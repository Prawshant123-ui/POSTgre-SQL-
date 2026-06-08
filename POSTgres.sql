CREATE DATABASE my_shop;

CREATE TABLE users(
id SERIAL  PRIMARY KEY,
name VARCHAR(50),
address VARCHAR(50)
)

INSERT INTO users (id,name,address) VALUES
(1,'Prashant','Chitwan'),
(2,'Nabin','Kathmandu'),
(3,'Salina','Nuwakot');

CREATE TABLE products(
id SERIAL  PRIMARY KEY,
prod_name VARCHAR(50),
price INT 
);

INSERT INTO products (id,prod_name,price) VALUES
(1,'Laptop','100000'),
(2,'Mobile','30000'),
(3,'Charger','250');

SELECT * FROM users;
SELECT * FROM products;

SELECT u.id,u.name,p.prod_name,p.price,u.address
FROM users u
INNER JOIN products p
ON u.id=p.id;


SELECT COUNT(id) FROM users;
SELECT SUM(price) FROM products;
SELECT AVG(price) FROM products;
SELECT MIN(price) FROM products;
SELECT MAX(price) FROM products;


SELECT prod_name, COUNT(*) FROM products GROUP BY prod_name;





