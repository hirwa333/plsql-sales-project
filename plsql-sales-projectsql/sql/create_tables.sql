-- 1 Select or create a database
CREATE DATABASE IF NOT EXISTS sales_db;
USE sales_db;

-- 2 Customers table
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(100),
  region VARCHAR(50)
);

-- 3 Products table
CREATE TABLE products (
  product_id INT PRIMARY KEY,
  name VARCHAR(200),
  category VARCHAR(100),
  price DECIMAL(12,2)
);

-- 4 Transactions table
CREATE TABLE transactions (
  transaction_id INT PRIMARY KEY,
  customer_id INT,
  product_id INT,
  sale_date DATE,
  quantity INT,
  amount DECIMAL(12,2),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- 5 Insert sample data
INSERT INTO customers VALUES (1001, 'John Doe','Kigali');
INSERT INTO customers VALUES (1002, 'Hirwa Roy','Gisenyi');

INSERT INTO products VALUES (2001, 'Coffee Beans','Beverages', 25000);
INSERT INTO products VALUES (2002, 'Washing Machine','Equipment', 250000);

INSERT INTO transactions VALUES (3001, 1001, 2001, '2024-01-15', 1, 25000);
INSERT INTO transactions VALUES (3002, 1002, 2001, '2024-02-05', 2, 50000);



