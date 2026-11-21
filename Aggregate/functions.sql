\pset pager off

--1
SELECT COUNT(*) AS "Количество записей"
FROM orders;

--2
SELECT COUNT(*)
FROM orders
WHERE discount IS NOT NULL;

SELECT COUNT(*)
FROM orders
WHERE discount IS NULL;

--3
SELECT
    ROUND(SUM(price)) AS "Сумма цен",
    ROUND(AVG(price)) AS "Средняя цена",
    ROUND(MIN(price)) AS "Минимальная цена",
    ROUND(MAX(price)) AS "Максимальная цена"
FROM orders;

--4
SELECT
    COUNT(*) AS "Количество доставленных заказов",
    ROUND(SUM(price)) AS "Общая цена",
    ROUND(AVG(price)) AS "Средняя цена"
FROM orders
WHERE price > 5000 AND
status = 'Доставлен';

--5
SELECT
    COUNT(*) AS "Количество заказов",
    COUNT(*) FILTER (WHERE discount IS NOT NULL) AS "Количество со скидкой",
    ROUND(AVG(discount) FILTER (WHERE discount IS NOT NULL)) AS "Средняя скидка",
    ROUND(MIN(discount) FILTER (WHERE discount IS NOT NULL)) AS "Минимальная скидка",
    ROUND(MAX(discount) FILTER (WHERE discount IS NOT NULL)) AS "Максимальная скидка",
    ROUND(MAX(price)) AS "Максимальная цена заказа"
FROM orders
WHERE status != 'Отменён';