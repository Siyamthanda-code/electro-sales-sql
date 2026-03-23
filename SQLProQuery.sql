-- Create Tables

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    city TEXT,
    join_date TEXT
);

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_name TEXT NOT NULL,
    category TEXT,
    price REAL
);

CREATE TABLE sales (
    sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    product_id INTEGER,
    quantity INTEGER NOT NULL,
    sale_date TEXT NOT NULL,
    total_amount REAL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- 2. Insert Mock Data

INSERT INTO customers (first_name, last_name, city, join_date) VALUES
('Siyamthanda', 'Buthelezi', 'Johannesburg', '2023-01-15'),
('John', 'Doe', 'Cape Town', '2023-02-10'),
('Jane', 'Smith', 'Durban', '2023-03-05'),
('Thabo', 'Mokoena', 'Pretoria', '2023-04-20'),
('Kgotso', 'Molefe', 'Johannesburg', '2023-05-12'),
('Sarah', 'Jones', 'Cape Town', '2023-06-01'),
('Peter', 'Brown', 'Durban', '2023-06-15');

INSERT INTO products (product_name, category, price) VALUES
('Laptop Pro', 'Electronics', 15000.00),
('Wireless Mouse', 'Accessories', 250.00),
('Mechanical Keyboard', 'Accessories', 1200.00),
('Monitor 27 inch', 'Electronics', 3500.00),
('USB-C Cable', 'Accessories', 150.00),
('Gaming Chair', 'Furniture', 2500.00),
('Smartphone X', 'Electronics', 12000.00);

INSERT INTO sales (customer_id, product_id, quantity, sale_date, total_amount) VALUES
(1, 1, 1, '2024-01-01', 15000.00),
(2, 2, 2, '2024-01-02', 500.00),
(1, 3, 1, '2024-01-05', 1200.00),
(3, 4, 2, '2024-01-10', 7000.00),
(4, 1, 1, '2024-02-01', 15000.00),
(5, 5, 5, '2024-02-14', 750.00),
(6, 7, 1, '2024-02-20', 12000.00),
(2, 6, 1, '2024-03-01', 2500.00),
(7, 2, 1, '2024-03-05', 250.00),
(1, 7, 1, '2024-03-10', 12000.00);