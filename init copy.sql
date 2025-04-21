-- USERS
CREATE TABLE IF NOT EXISTS stg_users (
    id INTEGER PRIMARY KEY,
    email TEXT,
    username TEXT
);

-- PRODUCTS
CREATE TABLE IF NOT EXISTS stg_products (
    id INTEGER PRIMARY KEY,
    title TEXT,
    price NUMERIC,
    category TEXT
);

-- CARTS
CREATE TABLE IF NOT EXISTS stg_carts (
    id INTEGER PRIMARY KEY,
    userId INTEGER,
    date TIMESTAMP
);

-- CART ITEMS
CREATE TABLE IF NOT EXISTS stg_cart_items (
    cart_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    PRIMARY KEY (cart_id, product_id)
);
