CREATE TABLE employees 
(
	emp_id INT PRIMARY KEY,
	emp_name VARCHAR(50),
    salary INT	
);

INSERT INTO employees VALUES
(1, 'Charles', 67000),
(2, 'Max', 55501),
(3, 'George', 82000),
(4, 'Daniel', 75003);

SELECT emp_name, salary,
CASE
    WHEN salary % 2 = 0 THEN 'EVEN'
    ELSE 'ODD'
END AS salary_type
FROM employees;


