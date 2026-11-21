\pset pager off

--1
SELECT *
FROM orders
LIMIT 5;

--2
SELECT *
FROM orders
ORDER BY price DESC
LIMIT 3;

--3
SELECT *
FROM orders
ORDER BY order_date DESC
LIMIT 5;

--4
SELECT *
FROM orders
OFFSET 5 LIMIT 5;

--5
SELECT *
FROM orders
ORDER BY order_date DESC
OFFSET 5 LIMIT 5;

--trimmed mean
SELECT ROUND(AVG(price))
FROM (
    SELECT *
    FROM (
        SELECT price
        FROM orders
        ORDER BY price
        OFFSET 5
    )
    ORDER BY price DESC
    OFFSET 5
);