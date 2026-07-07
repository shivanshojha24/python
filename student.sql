-- Create a database
CREATE DATABASE student_db;

-- Use the database
USE student_db;

-- Create a students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    age INT,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    course VARCHAR(100),
    department VARCHAR(100),
    admission_date DATE,
    cgpa DECIMAL(3,2)
);

-- Insert sample data
INSERT INTO students
(first_name, last_name, gender, age, email, phone, course, department, admission_date, cgpa)
VALUES
('Rahul', 'Sharma', 'Male', 20, 'rahul@example.com', '9876543210', 'B.Tech', 'Computer Science', '2024-08-01', 8.75),
('Priya', 'Singh', 'Female', 19, 'priya@example.com', '9876543211', 'BCA', 'Computer Applications', '2024-08-05', 9.10),
('Amit', 'Verma', 'Male', 21, 'amit@example.com', '9876543212', 'B.Sc', 'Mathematics', '2023-08-10', 8.20);

-- View all records
SELECT * FROM students;