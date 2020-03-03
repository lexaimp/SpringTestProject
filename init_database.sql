DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS product;

CREATE TABLE products
(
    id    SERIAL PRIMARY KEY,
    name  CHARACTER VARYING(255) NOT NULL,
    price DOUBLE PRECISION
);

CREATE TABLE orders
(
    id         SERIAL PRIMARY KEY,
    number     INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity   INTEGER NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products (id)
);

INSERT INTO products (name, price)
SELECT concat('Товар-', gs), floor(random() * (1000) + 1)
FROM generate_series(1, 1000) AS gs;

INSERT INTO orders (number, product_id, quantity)
SELECT floor(random() * (1000) + 1), gs, floor(random() * (100) + 1)
FROM generate_series(1, 1000) AS gs
WHERE NOT exists(SELECT * FROM orders WHERE number = gs);

INSERT INTO orders (number, product_id, quantity)
SELECT floor(random() * (1000) + 1), gs, floor(random() * (200) + 1)
FROM generate_series(1, 1000) AS gs
WHERE NOT exists(SELECT * FROM orders WHERE number = gs);

INSERT INTO orders (number, product_id, quantity)
SELECT floor(random() * (1000) + 1), gs, floor(random() * (300) + 1)
FROM generate_series(1, 1000) AS gs
WHERE NOT exists(SELECT * FROM orders WHERE number = gs);