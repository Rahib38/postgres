CREATE Table students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(50),
    country VARCHAR(50)
);


INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('Rahim', 'Ahmed', 20, 'A+', 'Computer Science', 'rahim.ahmed@example.com', '2004-05-12', 'B+', 'Bangladesh'),
('Karim', 'Hossain', 22, 'B', 'Software Engineering', 'karim.hossain@example.com', '2002-08-25', 'O+', 'Bangladesh'),
('Ayesha', 'Rahman', 21, 'A', 'Data Science', 'ayesha.rahman@example.com', '2003-11-14', 'A-', 'India'),
('Fatima', 'Khan', 23, 'A-', 'AI & ML', 'fatima.khan@example.com', '2001-04-30', 'AB+', 'Pakistan'),
('John', 'Doe', 24, 'B+', 'Cyber Security', 'john.doe@example.com', '2000-07-09', 'O-', 'USA'),
('Jane', 'Smith', 22, 'A+', 'Cloud Computing', 'jane.smith@example.com', '2002-01-22', 'B-', 'UK'),
('Ali', 'Hassan', 20, 'B-', 'Networking', 'ali.hassan@example.com', '2004-06-15', 'A+', 'UAE'),
('Sophia', 'Brown', 21, 'A', 'Business Analytics', 'sophia.brown@example.com', '2003-09-10', 'O+', 'Canada'),
('Ethan', 'Taylor', 23, 'B+', 'Software Engineering', 'ethan.taylor@example.com', '2001-03-18', 'B+', 'Australia'),
('Mia', 'Anderson', 22, 'A-', 'Database Management', 'mia.anderson@example.com', '2002-12-05', 'AB-', 'Germany'),
('Omar', 'Faruk', 25, 'B', 'AI & ML', 'omar.faruk@example.com', '1999-02-28', 'O+', 'Bangladesh'),
('Nadia', 'Islam', 20, 'A+', 'Computer Science', 'nadia.islam@example.com', '2004-07-11', 'B+', 'Bangladesh'),
('Hasan', 'Mahmud', 22, 'B-', 'Software Engineering', 'hasan.mahmud@example.com', '2002-10-21', 'A-', 'Bangladesh'),
('Sara', 'Chowdhury', 23, 'A', 'Cyber Security', 'sara.chowdhury@example.com', '2001-06-17', 'O-', 'India'),
('Jake', 'Miller', 24, 'B+', 'Networking', 'jake.miller@example.com', '2000-08-12', 'AB+', 'USA'),
('Emma', 'Wilson', 21, 'A-', 'Cloud Computing', 'emma.wilson@example.com', '2003-01-30', 'B-', 'UK'),
('Arif', 'Rahman', 20, 'B', 'Data Science', 'arif.rahman@example.com', '2004-11-08', 'A+', 'Bangladesh'),
('Sophia', 'Williams', 23, 'A+', 'Business Analytics', 'sophia.williams@example.com', '2001-05-25', 'O-', 'Canada'),
('William', 'Jones', 22, 'B-', 'Database Management', 'william.jones@example.com', '2002-09-03', 'B+', 'Australia'),
('Amin', 'Karim', 25, 'A', 'AI & ML', 'amin.karim@example.com', '1999-12-18', 'O+', 'Pakistan');



SELECT * FROM students ORDER BY first_name ASC;
SELECT * FROM students;
SELECT DISTINCT country FROM students;
SELECT * FROM students
    WHERE country = 'USA';
SELECT * FROM students
    WHERE grade = 'A' AND course = 'AI & ML';
SELECT * FROM students
    WHERE blood_group = 'A+';
SELECT * FROM students
    WHERE country = 'USA' OR country = 'Bangladesh';
SELECT * FROM students
    WHERE (country = 'USA' OR country = 'Bangladesh')AND age=20;

SELECT * FROM students
    WHERE NOT country = 'USA';
SELECT * FROM students
    WHERE email IS NULL;
SELECT COALESCE(email, 'Email is not provided') as "Email", blood_group,first_name from students;


SELECT * FROM students
    WHERE country IN('USA','Bangladesh');
SELECT * FROM students
    WHERE country NOT IN('USA','Bangladesh');
SELECT * FROM students
    WHERE age BETWEEN 19 and 25;
SELECT * FROM students
    WHERE first_name LIKE '%n';
SELECT * FROM students
    WHERE first_name LIKE '_a%';
SELECT * FROM students
    WHERE first_name LIKE '_a__';
SELECT * FROM students
    WHERE first_name ILIKE 'a%';
SELECT * FROM students LIMIT 5;
SELECT * FROM students LIMIT 5 OFFSET 5 * 0;
SELECT * FROM students LIMIT 5 OFFSET 5 * 1;
SELECT * FROM students LIMIT 5 OFFSET 5 * 2;
SELECT * FROM students LIMIT 5 OFFSET 5 * 3;
SELECT * FROM students;

DELETE FROM students
WHERE grade ='B';

UPDATE students
set email = 'default@gmail.com'
WHERE student_id =5