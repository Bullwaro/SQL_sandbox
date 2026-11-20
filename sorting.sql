\pset pager off

--1
SELECT * FROM orders
ORDER BY price DESC;

--2
SELECT * FROM orders
ORDER BY order_date ASC;

--3
SELECT * FROM orders
WHERE status = 'Доставлен'
ORDER BY quantity DESC;

--4
SELECT * FROM orders
ORDER BY category, price;

--5
SELECT * FROM orders
ORDER BY discount NULLS FIRST;