\pset pager off

--1
SELECT
    order_id
FROM orders
WHERE price > 30000;

--2
SELECT
    order_id
FROM orders
WHERE status = 'Доставлен';

--3
--выведу полностью всю строку
SELECT * FROM orders WHERE category IN ('Аудио', 'Периферия');
--2 способ
SELECT * FROM orders WHERE category = 'Аудио' OR category = 'Периферия';

--4
SELECT * FROM orders WHERE price BETWEEN 5000 AND 20000;
--2 способ
SELECT * FROM orders WHERE price >= 5000 AND price <= 20000;

--5
SELECT * FROM orders WHERE product LIKE '%Кофе%';

--6
SELECT * FROM orders WHERE discount IS NULL;

--7
SELECT * FROM orders WHERE status = 'Доставлен' AND category IN ('Аудио', 'Электроника') AND price > 10000;