\pset pager off

--1
SELECT
    customers.first_name,
    customers.last_name,
    orders.product
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id;

--2
SELECT
    customers.customer_id,
    customers.first_name,
    customers.last_name
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
WHERE orders.customer_id IS NULL;

--3
SELECT
    customers.first_name,
    orders.*
FROM orders
RIGHT JOIN customers
    ON customers.customer_id = orders.customer_id;

--4
SELECT
    customers.first_name AS "Имя покупателя",
    orders.product
FROM customers
FULL OUTER JOIN orders
    ON customers.customer_id = orders.customer_id;

--5
SELECT
    customers.first_name AS "Имя",
    customers.last_name AS "Фамилия",
    COUNT(orders.order_id) AS "Количество заказов"
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id
ORDER BY "Количество заказов" DESC;
