\pset pager off

--1
SELECT DISTINCT category
FROM orders;

--2
SELECT DISTINCT status
FROM orders;

--3
SELECT DISTINCT category, status
FROM orders;

--4
SELECT DISTINCT city
FROM customers
ORDER BY city;

--5
SELECT DISTINCT discount
FROM orders
ORDER BY discount;