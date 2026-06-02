Create database college;

use college;

CREATE table students (
  id int primary key,
  name varchar(50),
  course varchar (50),
  marks int
  );
  
INSERT INTO students VALUES
(1,"Dhyani","Data Anayltics",65),  
(2,"Princy","Data Engineer",71),
(3,"Hemal","Data Science",58),
(4,"Manushree","Business Anayltics",85);

select * from students;

SELECT course, AVG(marks)
FROM students
GROUP BY course;

SELECT course, AVG(marks)
FROM students
GROUP BY course
HAVING AVG(marks) > 75;

SELECT * FROM students
LIMIT 4;

SELECT *
FROM students
WHERE course IN ('Data Anayltics','Data Science');

SELECT *
FROM students
WHERE marks BETWEEN 60 AND 90;

SELECT *
FROM students
WHERE name LIKE 'D%';

-- Average marks per course
SELECT course, AVG(marks) AS average_marks
FROM students
GROUP BY course;

-- Courses where average marks > 70
SELECT course, AVG(marks) AS avg_marks
FROM students
GROUP BY course
HAVING AVG(marks) > 70;

-- Top 3 students by marks
SELECT name, marks
FROM students
ORDER BY marks DESC
LIMIT 3;

-- Students in Business Analytics or Data Engineer with marks between 70 and 90
SELECT * FROM students
WHERE course IN ('Businee Analytics', 'Data Engineer')
AND marks BETWEEN 60 AND 90;

-- Summary of student marks
SELECT 
  COUNT(*) AS total_students,
  SUM(marks) AS total_marks,
  AVG(marks) AS average_marks,
  MAX(marks) AS highest_marks,
  MIN(marks) AS lowest_marks
FROM students;

SELECT COUNT(*) AS total_students
FROM students;

SELECT
MAX(marks) AS highest_marks,
MIN(marks) AS lowest_marks
FROM students;

SELECT course,
SUM(marks) AS total_marks
FROM students
GROUP BY course;

SELECT course,
AVG(marks) AS average_marks
FROM students
GROUP BY course;

SELECT course,
AVG(marks) AS average_marks
FROM students
GROUP BY course
HAVING AVG(marks) > 80;

SELECT name, marks
FROM students
ORDER BY marks DESC
LIMIT 2;

SELECT *
FROM students
WHERE marks BETWEEN 70 AND 90;

SELECT *
FROM students
WHERE course IN ('Businee Analytics','Data Science');

SELECT COUNT(DISTINCT course) AS total_courses
FROM students;

SELECT *
FROM students
WHERE name LIKE 'M%';

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(30)
);

CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);

-- Students
INSERT INTO students VALUES
(1, 'Dhyani', 'Python'),
(2, 'Princy', 'SQL'),
(3, 'Hemal', 'Data Analysis');

select * from students

-- Marks
INSERT INTO marks VALUES
(101, 1, 85),
(102, 2, 90),
(103, 3, 78),
(104, 1, 88);  -- Dhyani has two marks

select * from marks;

ALTER TABLE students
ADD email VARCHAR(50);

DESCRIBE students;

ALTER TABLE students
MODIFY course VARCHAR(50);

ALTER TABLE students
RENAME COLUMN course TO course_name;

ALTER TABLE students
DROP COLUMN email;

RENAME TABLE students TO student_info;

DELETE FROM student_info WHERE id = 1;  -- Delete Hemal
SELECT * FROM marks;

TRUNCATE TABLE marks;
SELECT * FROM marks;  -- Output: empty

DROP TABLE marks;
DROP TABLE student_info;

CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  course VARCHAR(30)
);

CREATE TABLE marks (
  mark_id INT PRIMARY KEY,
  student_id INT,
  marks INT,
  FOREIGN KEY (student_id) REFERENCES students(id)
);

ALTER TABLE students
ADD email VARCHAR(100);

ALTER TABLE students
MODIFY course VARCHAR(50);

ALTER TABLE students
DROP COLUMN email;

RENAME TABLE students TO student_info;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS marks;
DROP TABLE IF EXISTS student_info;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(30)
);

select * from teachers

ALTER TABLE teachers
ADD email VARCHAR(100);

ALTER TABLE teachers
MODIFY subject VARCHAR(50);

ALTER TABLE teachers
RENAME COLUMN subject TO subject_name;

ALTER TABLE teachers
DROP COLUMN email;

RENAME TABLE teachers TO faculty;

CREATE TABLE faculty_salary (
    salary_id INT PRIMARY KEY,
    teacher_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (teacher_id)
    REFERENCES faculty(teacher_id)
    ON DELETE CASCADE
);

INSERT INTO faculty VALUES
(1, 'Dhyani', 'Math'),
(2, 'Princy','Science'),
(3, 'Hemal','English');

INSERT INTO faculty_salary VALUES
(101, 1, 50000),
(102, 2, 55000),
(103, 3, 60000);

DELETE FROM faculty
WHERE teacher_id = 1;

SELECT * FROM faculty_salary;

TRUNCATE TABLE faculty_salary;

DROP TABLE faculty_salary;
DROP TABLE faculty;