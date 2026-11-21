\pset pager off

--1
SELECT
    customers.first_name,
    customers.last_name,
    orders.product,
    orders.price
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id;

--2
SELECT
    customers.first_name,
    orders.product
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id
WHERE orders.price > 20000;

--3
SELECT
    customers.first_name,
    customers.city,
    orders.product,
    orders.order_date
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id
WHERE status = 'Доставлен'
ORDER BY orders.order_date DESC;

--4
SELECT
    customers.first_name,
    customers.last_name,
    orders.category,
    orders.product,
    orders.status
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id
WHERE customers.city = 'Москва';

--5
SELECT
    customers.first_name,
    customers.last_name,
    COUNT(order_id),
    ROUND(SUM(orders.price))
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id
ORDER BY ROUND(SUM(price)) DESC;