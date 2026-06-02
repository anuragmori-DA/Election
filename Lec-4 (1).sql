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



