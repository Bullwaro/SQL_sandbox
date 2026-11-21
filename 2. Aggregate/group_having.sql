\pset pager off

--1
SELECT
    category,
    COUNT(*)
FROM orders
GROUP BY category;

--2
SELECT
    status,
    COUNT(*),
    ROUND(AVG(price))
FROM orders
GROUP BY status;

--3
SELECT
    category,
    status,
    COUNT(*),
    ROUND(SUM(price)) AS "Общая стоимость"
FROM orders
GROUP BY (category, status)
ORDER BY category, status;

--4
SELECT
    COUNT(*),
    ROUND(AVG(price))
FROM orders
WHERE status = 'Доставлен' AND
price > 5000
GROUP BY category;

--5
SELECT
    category,
    COUNT(*),
    ROUND(AVG(price)),
    ROUND(MAX(price))
FROM orders
WHERE status = 'Доставлен'
GROUP BY category
HAVING COUNT(*) >= 2 AND AVG(price) > 10000
ORDER BY AVG(price) DESC;