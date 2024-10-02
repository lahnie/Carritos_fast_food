SELECT
    *
FROM
    `orders`
INSERT INTO
    `orders` (
        `id`,
        `client_name`,
        `rut`,
        `adress`,
        `phone_number`,
        `product_name`,
        `price`,
        `product_description`,
        `created_date`,
        `updated_date`
    )
VALUES
    (
        NULL,
        'Belén Vargas',
        '20250498-1',
        'Av. Siempre viva 159, Springfield, EEUU',
        '987564534',
        'Carrito completero',
        '8000000',
        'Carrito en el que se pueden preparar completitos',
        current_timestamp(),
        current_timestamp()
    );

INSERT INTO
    `orders` (
        `id`,
        `client_name`,
        `rut`,
        `adress`,
        `phone_number`,
        `product_name`,
        `price`,
        `product_description`,
        `created_date`,
        `updated_date`
    )
VALUES
    (
        NULL,
        'Poopy Maria',
        '23456778-1',
        'Av. Siempre viva 159, Springfield, EEUU',
        '987564534',
        'Carrito completero',
        '8000000',
        'Carrito en el que se pueden preparar completitos',
        current_timestamp(),
        current_timestamp()
    );
    
    ALTER TABLE orders ADD status VARCHAR(60);