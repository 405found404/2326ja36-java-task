CREATE DATABASE library;
USE library; 
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(150),
    author VARCHAR(100),
    genre VARCHAR(50),
    published_year INT
);
 
CREATE TABLE members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    join_date DATE
);

CREATE TABLE borrow_records (
    record_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

INSERT INTO books VALUES
(1, 'leo', 'George Orwell', 'Dystopian', 1949),
(2, 'master', 'Harper Lee', 'Fiction', 1960),
(3, 'sachin', 'Paulo Coelho', 'Philosophical', 1988),
(4, 'ghili', 'Yuval Noah Harari', 'History', 2011),
(5, 'goat', 'Robert C. Martin', 'Programming', 2008);


INSERT INTO members VALUES
(101, 'leo', 'pandi@library.com', '2024-01-10'),
(102, 'master', 'dharani@library.com', '2024-03-15'),
(103, 'sachin', 'vasanth@library.com', '2024-02-20'),
(104, 'ghili', 'ganesh@library.com', '2024-04-01'),
(105, 'goat', 'kevin@library.com', '2024-05-12');

INSERT INTO borrow_records VALUES
(1, 101, 3, '2024-06-01', '2024-06-15'),
(2, 102, 1, '2024-06-10', '2024-06-20'),
(3, 103, 5, '2024-06-12', NULL),
(4, 104, 2, '2024-06-18', NULL),
(5, 105, 4, '2024-06-25', NULL);
