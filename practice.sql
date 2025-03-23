CREATE Table employees(
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50),
    dep_id INT REFERENCES departments(dep_id),
    salary DECIMAL(10,2),
    hire_date DATE
);
CREATE Table departments(
    dep_id SERIAL PRIMARY KEY,
    dep_name VARCHAR(50)
);
DROP Table employees;

INSERT INTO departments (dep_name) VALUES
    ('HR'),
    ('Marketing'),
    ('Finance'),
    ('IT'),
    ('Sales'),
    ('Engineering'),
    ('Customer Support'),
    ('Administration'),
    ('Research'),
    ('Quality Assurance');

    INSERT INTO employees (emp_name, dep_id, salary, hire_date) VALUES
('Alice Johnson', 1, 55000.00, '2022-03-15'),
('Bob Smith', 2, 62000.00, '2021-06-10'),
('Charlie Brown', 3, 48000.00, '2023-01-20'),
('David Wilson', 1, 71000.00, '2020-09-05'),
('Emma Davis', 2, 53000.00, '2019-12-12'),
('Frank Miller', 4, 67000.00, '2021-08-30'),
('Grace Lee', 3, 50000.00, '2022-05-14'),
('Henry Clark', 1, 75000.00, '2018-07-22'),
('Isabella White', 2, 58000.00, '2020-10-03'),
('Jack Turner', 4, 69000.00, '2019-04-17'),
('Kevin Harris', 1, 72000.00, '2023-02-28'),
('Lily Martinez', 3, 51000.00, '2022-11-09'),
('Michael Rodriguez', 4, 68000.00, '2017-06-25'),
('Nancy Walker', 2, 54000.00, '2021-07-07'),
('Oliver Scott', 3, 49500.00, '2020-11-15'),
('Pamela Allen', 1, 73000.00, '2019-03-29'),
('Quincy Baker', 2, 56000.00, '2022-08-19'),
('Rachel Adams', 4, 66500.00, '2018-05-12'),
('Samuel Carter', 3, 49000.00, '2021-09-27'),
('Tina Nelson', 1, 74000.00, '2020-02-14');




SELECT * FROM employees
JOIN departments ON employees.emp_id = departments.dep_id;
SELECT * FROM employees
JOIN departments USING (dep_id);
SELECT dep_name, round(avg(salary)) as avg_salary FROM employees
JOIN departments USING (dep_id)
GROUP BY dep_name;
SELECT dep_name, count(*) as avg_salary FROM employees
JOIN departments USING (dep_id)
GROUP BY dep_name;
SELECT dep_name, round(avg(salary)) as avg_salary FROM employees
JOIN departments USING (dep_id)
GROUP BY dep_name
ORDER BY avg_salary DESC
LIMIT 1;

SELECT extract(YEAR FROM hire_date) as hire_year, count(*) from employees
GROUP BY hire_year;


CREATE Table orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL (10,2)
)

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2025-01-01', 250.50),
(2, '2025-03-02', 120.75),
(1, '2025-02-04', 89.99),
(3, '2025-03-03', 350.00),
(2, '2025-05-05', 540.25),
(3, '2025-03-06', 150.40),
(1, '2025-04-07', 310.99),
(2, '2025-03-08', 220.30),
(3, '2025-03-09', 410.10),
(1, '2024-10-10', 99.99),
(4, '2024-11-10', 180.99);

DROP TABLE orders;
SELECT * FROM orders;
SELECT customer_id, count(*), sum(total_amount) FROM orders
GROUP BY customer_id
HAVING count(order_id)>2 ;

SELECT extract(month from order_date) as month,sum(total_amount) FROM orders
WHERE extract(year from order_date)=2025
GROUP BY month;
