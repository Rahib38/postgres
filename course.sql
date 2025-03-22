CREATE Table employees(
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);
CREATE Table departments(
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO employees VALUES (1, 'John Doe', 101);
INSERT INTO employees VALUES (2, 'Jane smith', 102);

INSERT INTO departments VALUES (101, 'Human Researchs');
INSERT INTO departments VALUES (102, 'Marketing');

SELECT * FROM employees;
SELECT * FROM departments;

-- cross join
SELECT * FROM employees
CROSS JOIN departments;

-- natural join

SELECT * FROM employees
NATURAL JOIN departments;