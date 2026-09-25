-- Library Management Database

CREATE DATABASE library_management;

USE library_management;

-- Create books table
CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    published_year INT
);

-- Create members table
CREATE TABLE members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20)
);

-- Create borrowing table
CREATE TABLE borrowings (
    borrowing_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

-- Add books
INSERT INTO books (title, author, category, published_year)
VALUES
('Things Fall Apart', 'Chinua Achebe', 'Fiction', 1958),
('The Alchemist', 'Paulo Coelho', 'Fiction', 1988),
('Clean Code', 'Robert C. Martin', 'Programming', 2008);

-- Add members
INSERT INTO members (name, email, phone)
VALUES
('Amina Hassan', 'amina@example.com', '0712345678'),
('Brian Otieno', 'brian@example.com', '0723456789'),
('Fatuma Ali', 'fatuma@example.com', '0734567890');

-- Add borrowing records
INSERT INTO borrowings (book_id, member_id, borrow_date, return_date)
VALUES
(1, 1, '2026-09-20', '2026-09-27'),
(2, 2, '2026-09-21', '2026-09-28');

-- Display the tables
SHOW TABLES;

-- Display the data
SELECT * FROM books;
SELECT * FROM members;
SELECT * FROM borrowings;
