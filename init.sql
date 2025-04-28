-- Cria schemas
CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;

-- Tabela USERS
CREATE TABLE IF NOT EXISTS bronze.bronze_users (
    id INTEGER PRIMARY KEY,
    email TEXT,
    username TEXT,
    date TIMESTAMP,
    source TEXT
);

-- Tabela PRODUCTS
CREATE TABLE IF NOT EXISTS bronze.bronze_products (
    id INTEGER PRIMARY KEY,
    title TEXT,
    price NUMERIC,
    description TEXT,
    category TEXT,
    image TEXT,
    date TIMESTAMP,
    source TEXT
);

-- Tabela CARTS
CREATE TABLE IF NOT EXISTS bronze.bronze_carts (
    id INTEGER PRIMARY KEY,
    userId INTEGER,
    products JSONB,
    date TIMESTAMP,
    source TEXT
);
