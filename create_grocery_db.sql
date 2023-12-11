
-- Create the Transaction table
CREATE TABLE Transactions (
                             transaction_id INTEGER PRIMARY KEY,
                             customer_id INTEGER,
                             employee_id INTEGER,
                             product_id INTEGER,
                             quantity INTEGER,
                             total_amount REAL,
                             date TEXT,
                             FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
                             FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
                             FOREIGN KEY (product_id) REFERENCES Inventory(product_id)
);
--Create Employee Table
CREATE TABLE Employee (
                            employee_id INTEGER PRIMARY KEY,
                            name TEXT,
                            position TEXT,
                            salary REAL
);
--Create Customer Table
CREATE TABLE Customer (
                            customer_id INTEGER PRIMARY KEY,
                            name TEXT,
                            email TEXT,
                            phone INTEGER
);
--Create Inventory Table
CREATE TABLE Inventory (
                            product_id INTEGER PRIMARY KEY,
                            name TEXT,
                            category TEXT,
                            price REAL,
                            quantity INTEGER
);


-- Insert into Employee table
INSERT INTO Employee (name, position, salary) VALUES
                                                  ('John Doe', 'Developer', 70000.00),
                                                  ('Jane Smith', 'Manager', 90000.00),
                                                  ('Bob Johnson', 'Analyst', 80000.00),
                                                  ('Emily Davis', 'Designer', 75000.00),
                                                  ('Michael White', 'Engineer', 85000.00),
                                                  ('Lisa Miller', 'Coordinator', 60000.00),
                                                  ('David Lee', 'Programmer', 95000.00),
                                                  ('Amy Brown', 'Administrator', 70000.00),
                                                  ('Brian Wilson', 'Consultant', 100000.00),
                                                  ('Catherine Taylor', 'Architect', 110000.00),
                                                  ('Daniel Adams', 'Specialist', 85000.00),
                                                  ('Eva Garcia', 'Supervisor', 80000.00),
                                                  ('Frank Martin', 'Technician', 65000.00),
                                                  ('Grace Hall', 'Coordinator', 70000.00),
                                                  ('Henry Turner', 'Analyst', 90000.00),
                                                  ('Isabel Lopez', 'Engineer', 85000.00),
                                                  ('Jack Nelson', 'Developer', 75000.00),
                                                  ('Kelly Cooper', 'Manager', 95000.00),
                                                  ('Larry Roberts', 'Programmer', 80000.00),
                                                  ('Monica Perez', 'Administrator', 70000.00);

-- Insert into Customer table
INSERT INTO Customer (name, email, phone) VALUES
                                              ('Alice Johnson', 'alice@email.com', '555-1234'),
                                              ('Bob Anderson', 'bob@email.com', '555-5678'),
                                              ('Charlie Davis', 'charlie@email.com', '555-9876'),
                                              ('Diana White', 'diana@email.com', '555-5432'),
                                              ('Edward Martin', 'edward@email.com', '555-8765'),
                                              ('Fiona Miller', 'fiona@email.com', '555-2345'),
                                              ('George Wilson', 'george@email.com', '555-6789'),
                                              ('Helen Taylor', 'helen@email.com', '555-4321'),
                                              ('Ivan Brown', 'ivan@email.com', '555-7890'),
                                              ('Jennifer Lee', 'jennifer@email.com', '555-3456'),
                                              ('Kevin Adams', 'kevin@email.com', '555-0987'),
                                              ('Laura Garcia', 'laura@email.com', '555-6789'),
                                              ('Mark Turner', 'mark@email.com', '555-1234'),
                                              ('Nancy Cooper', 'nancy@email.com', '555-5678'),
                                              ('Oliver Smith', 'oliver@email.com', '555-9876'),
                                              ('Pamela Hall', 'pamela@email.com', '555-5432'),
                                              ('Quincy Taylor', 'quincy@email.com', '555-8765'),
                                              ('Rachel Nelson', 'rachel@email.com', '555-2345'),
                                              ('Samuel Roberts', 'samuel@email.com', '555-6789'),
                                              ('Tina Perez', 'tina@email.com', '555-4321');

-- Insert into Inventory table
INSERT INTO Inventory (name, category, price, quantity) VALUES
                                                            ('Apples', 'Fruits', 1.50, 100),
                                                            ('Bread', 'Bakery', 2.00, 50),
                                                            ('Milk', 'Dairy', 3.50, 30),
                                                            ('Eggs', 'Dairy', 1.75, 60),
                                                            ('Chicken', 'Meat', 5.00, 20),
                                                            ('Rice', 'Grains', 2.50, 40),
                                                            ('Cereal', 'Breakfast', 4.00, 25),
                                                            ('Tomatoes', 'Vegetables', 2.00, 35),
                                                            ('Potatoes', 'Vegetables', 1.25, 50),
                                                            ('Cheese', 'Dairy', 4.50, 20),
                                                            ('Pasta', 'Grains', 1.00, 45),
                                                            ('Bananas', 'Fruits', 0.75, 80),
                                                            ('Orange Juice', 'Beverages', 3.00, 15),
                                                            ('Yogurt', 'Dairy', 2.25, 30),
                                                            ('Ice Cream', 'Frozen Foods', 5.50, 10),
                                                            ('Salmon', 'Seafood', 8.00, 12),
                                                            ('Green Beans', 'Vegetables', 1.75, 25),
                                                            ('Bacon', 'Meat', 6.50, 18),
                                                            ('Cookies', 'Snacks', 2.75, 40),
                                                            ('Water', 'Beverages', 1.00, 60);

-- Insert into Transaction table
INSERT INTO Transactions (customer_id, employee_id, product_id, quantity, total_amount, date) VALUES
                                                                                                 (1, 1, 1, 2, 2400.00, '2023-01-01'),
                                                                                                 (2, 2, 2, 5, 25.00, '2023-01-02'),
                                                                                                 (3, 3, 3, 1, 300.00, '2023-01-03'),
                                                                                                 (4, 4, 4, 3, 450.00, '2023-01-04'),
                                                                                                 (5, 5, 5, 4, 80.00, '2023-01-05'),
                                                                                                 (6, 6, 6, 10, 80.00, '2023-01-06'),
                                                                                                 (7, 7, 7, 2, 160.00, '2023-01-07'),
                                                                                                 (8, 8, 8, 1, 25.00, '2023-01-08'),
                                                                                                 (9, 9, 9, 3, 90.00, '2023-01-09'),
                                                                                                 (10, 10, 10, 5, 150.00, '2023-01-10'),
                                                                                                 (11, 11, 11, 2, 50.00, '2023-01-11'),
                                                                                                 (12, 12, 12, 1, 500.00, '2023-01-12'),
                                                                                                 (13, 13, 13, 4, 28.00, '2023-01-13'),
                                                                                                 (14, 14, 14, 2, 30.00, '2023-01-14'),
                                                                                                 (15, 15, 15, 3, 750.00, '2023-01-15'),
                                                                                                 (16, 16, 16, 1, 15.00, '2023-01-16'),
                                                                                                 (17, 17, 17, 5, 150.00, '2023-01-17'),
                                                                                                 (18, 18, 18, 3, 90.00, '2023-010-18');
