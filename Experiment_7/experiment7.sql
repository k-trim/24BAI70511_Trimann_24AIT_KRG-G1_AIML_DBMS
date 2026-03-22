CREATE TABLE departments(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(20)
)

CREATE TABLE employees(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(20),
    dept_id INT REFERENCES departments(dept_id),
    salary NUMERIC
)

INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance')

INSERT INTO employees VALUES
(101, 'Amit', 1, 90000),
(102, 'Riya', 1, 80000),
(103, 'Karan', 2, 60000),
(104, 'Neha', 2, 65000),
(105, 'Arjun', 3, 55000),
(106, 'Priya', 1, 88000)

-- simple View
CREATE VIEW simple_view AS
SELECT emp_name, salary
FROM employees
WHERE salary > 70000

SELECT * FROM simple_view

-- complex view
CREATE VIEW complex_view AS
SELECT d.dept_name,
       COUNT(e.emp_id) AS total_employees,
       AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name

SELECT * FROM complex_view

-- materialised view
CREATE MATERIALIZED VIEW materialized_view AS
SELECT d.dept_name,
       COUNT(e.emp_id) AS total_employees,
       AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name

SELECT * FROM materialized_view

REFRESH MATERIALIZED VIEW materialized_view

EXPLAIN ANALYZE SELECT * FROM simple_view
EXPLAIN ANALYZE SELECT * FROM complex_view
EXPLAIN ANALYZE SELECT * FROM materialized_view