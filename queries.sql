
-- =========================
-- CREATE TABLES
-- =========================

CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(50)
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(100),
    author_id INT,
    price INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- =========================
-- INSERT DATA
-- =========================

INSERT INTO Authors VALUES
(1, 'Ali'),
(2, 'Ahmed');

INSERT INTO Books VALUES
(101, 'SQL Basics', 1, 500),
(102, 'Database Systems', 2, 700);

INSERT INTO Students VALUES
(1, 'Ahsan Rasool', 101),
(2, 'Hassan', 102),
(3, 'Zain', 101),
(4, 'Salman', 102);

-- =========================
-- SELECT QUERIES
-- =========================

-- Show all students
SELECT * FROM Students;

-- Show student names with book titles
SELECT Students.student_name, Books.book_title
FROM Students
JOIN Books ON Students.book_id = Books.book_id;

-- =========================
-- UPDATE QUERY
-- =========================

UPDATE Books
SET price = 600
WHERE book_id = 101;

-- =========================
-- DELETE QUERY
-- =========================

DELETE FROM Students
WHERE student_name = 'Hassan';

-- =========================
-- FINAL CHECK
-- =========================

SELECT * FROM Books;
SELECT * FROM Students;