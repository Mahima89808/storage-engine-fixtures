-- Creating the Table Structure
CREATE TABLE hardware_inventory (
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price NUMERIC(10, 2),
    stock_quantity INT DEFAULT 0
);


-- Inserting the Records (INSERT INTO)
INSERT INTO hardware_inventory (item_name, category, price, stock_quantity)
VALUES 
('Mechanical Keyboard', 'Keyboard', 2499.00, 10),
('Wireless Mouse', 'Mouse', 1299.00, 25),
('USB-C Hub', 'Accessories', 1799.00, 15),
('Gaming Keyboard', 'Keyboard', 3499.00, 5),
('Gaming Mouse', 'Mouse', 2299.00, 8);


--Fixing the Auto-Increment Counter
SELECT setval(pg_get_serial_sequence('hardware_inventory', 'item_id'), COALESCE(MAX(item_id), 1)) FROM hardware_inventory;



-- different ways to use select: 
SELECT * from hardware_inventory



-- 1. Wipe old data and reset the ID counter to 1
TRUNCATE TABLE hardware_inventory RESTART IDENTITY;


-- 2. Insert the items 
INSERT INTO hardware_inventory (item_name, category, price, stock_quantity)
VALUES 
('Mechanical Keyboard', 'Keyboard', 2499.00, 10),
('Wireless Mouse', 'Mouse', 1299.00, 25),
('USB-C Hub', 'Accessories', 1799.00, 15),
('Gaming Keyboard', 'Keyboard', 3499.00, 5),
('Gaming Mouse', 'Mouse', 2299.00, 8);

-- 3. View your perfect table
SELECT item_id, item_name, category, price, stock_quantity 
FROM hardware_inventory;