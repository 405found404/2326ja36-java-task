CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    age INT,
    total_purchase DECIMAL(10,2)
);

INSERT INTO customer VALUES
(1, 'vas', 'pandi@mail.com', 'Chennai', 25, 1500.50),
(2, 'raghu', 'dharani@mail.com', 'Bangalore', 30, 2000.00),
(3, 'vino', 'vasanth@mail.com', 'Delhi', 28, 1200.75),
(4, 'hari', 'ganesh@mail.com', 'Chennai', 35, 3000.00),
(5, 'Kevi', 'kevin@mail.com', 'Mumbai', 22, 900.00);

SELECT * FROM customer
WHERE city = 'Chennai';

SELECT * FROM customer
WHERE total_purchase > 1000;

SELECT * FROM customer
ORDER BY total_purchase DESC;
