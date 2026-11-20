DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    registration_date DATE NOT NULL
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL REFERENCES customers(customer_id),
    product VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    quantity INTEGER NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    discount NUMERIC(5, 2),
    order_date TIMESTAMP NOT NULL,
    status VARCHAR(30) NOT NULL
);

INSERT INTO customers (
    first_name, last_name, city, registration_date
)
VALUES
('Иван', 'Петров', 'Москва', '2025-01-10'),
('Анна', 'Смирнова', 'Санкт-Петербург', '2025-02-15'),
('Дмитрий', 'Иванов', 'Казань', '2025-03-20'),
('Мария', 'Соколова', 'Москва', '2025-04-05'),
('Алексей', 'Кузнецов', 'Екатеринбург', '2025-05-12');

INSERT INTO orders (
    customer_id, product, category, quantity,
    price, discount, order_date, status
)
VALUES
(1, 'Ноутбук ASUS', 'Электроника', 1, 85000, 10, '2025-06-01 12:30:00', 'Доставлен'),           --1
(1, 'Мышь Logitech', 'Периферия', 2, 3500, NULL, '2025-06-03 15:20:00', 'Доставлен'),           --2
(1, 'Клавиатура Keychron', 'Периферия', 1, 12000, 5, '2025-06-10 18:00:00', 'В обработке'),     --3
(2, 'Монитор Samsung', 'Электроника', 1, 32000, 15, '2025-06-02 10:00:00', 'Доставлен'),        --4
(2, 'Наушники Sony', 'Аудио', 1, 18000, NULL, '2025-06-05 14:30:00', 'Отменён'),                --5
(2, 'Микрофон HyperX', 'Аудио', 2, 9000, 10, '2025-06-15 11:00:00', 'Доставлен'),               --6
(3, 'iPhone 16', 'Электроника', 1, 95000, 5, '2025-06-04 09:15:00', 'Доставлен'),               --7
(3, 'Чехол для телефона', 'Аксессуары', 2, 1500, NULL, '2025-06-06 16:45:00', 'Доставлен'),     --8
(3, 'Зарядное устройство', 'Аксессуары', 1, 3000, NULL, '2025-06-20 13:00:00', 'В обработке'),  --9
(4, 'Кофемашина DeLonghi', 'Бытовая техника', 1, 45000, 20, '2025-06-07 12:00:00', 'Доставлен'),--10
(4, 'Кофе Lavazza', 'Продукты', 3, 1200, 5, '2025-06-08 08:30:00', 'Доставлен'),                --11
(4, 'Блендер Bosch', 'Бытовая техника', 1, 8000, NULL, '2025-06-18 17:20:00', 'Отменён'),       --12
(5, 'PlayStation 5', 'Электроника', 1, 65000, 10, '2025-06-09 19:00:00', 'Доставлен'),          --13
(5, 'Геймпад', 'Аксессуары', 2, 7000, NULL, '2025-06-11 20:00:00', 'Доставлен'),                --14
(5, 'Игра Elden Ring', 'Игры', 1, 5000, 15, '2025-06-21 21:30:00', 'В обработке');              --15

/*

1. SELECT — фильтрация, сортировка, DISTINCT, LIMIT, OFFSET.
2. Агрегация — COUNT, SUM, AVG, MIN, MAX, GROUP BY, HAVING.
3. JOIN — INNER, LEFT, RIGHT, FULL, CROSS JOIN.
4. Подзапросы — вложенные SELECT, EXISTS, IN, ANY, ALL.
5. Работа с данными — INSERT, UPDATE, DELETE.
6. Продвинутый SQL — CTE, оконные функции, CASE, VIEW.
7. Структура БД — ALTER TABLE, ограничения, индексы, транзакции.

*/