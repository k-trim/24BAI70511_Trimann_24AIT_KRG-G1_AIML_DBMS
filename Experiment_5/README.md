Experiment 5
<br>Name: Trimann Kaur	
<br>UID: 24BAI70511
<br>Branch: B.E. CSE (AIML)	
<br>Section: 24AIT_KRG-G1
<br>Semester: 4	
<br>Date of Performance: 11.03.2026
<br>Subject Name: Database Management System	
<br>Subject Code: 24CSH-298

AIM: To understand and apply conditional logic in SQL by using the modulus operator (MOD / %) to analyze numerical data and classify employee salaries as odd or even, thereby improving data analysis and decision-making skills in SQL.

OBJECTIVES: 

●	To write and execute SQL queries that use the MOD (%) operator to check employee salaries and display odd and even salary values separately from an employee table.

SOFTWARE REQUIREMENTS: 
<br>•	Database Management System:
<br>  o	PostgreSQL Database
<br>•	Database Administration Tool / Client Tool:
<br>  o	pgAdmin 

PRACTICAL/EXPERIMENT STEPS: 
1.	An employees table was created in the database with columns such as emp_id, emp_name, and emp_sal to store employee information and salary details.
2.	Sample employee records were inserted into the table to provide data for testing the SQL queries.
3.	The MOD / % (modulus) operator was studied to understand how it can be used to determine whether a salary value is odd or even.
4.	SQL queries were written using the modulus operator to evaluate employee salaries and apply conditional logic.
5.	A CASE statement was used in the SELECT query to display a new column indicating whether the salary is Even Salary or Odd Salary.
6.	The queries were executed using PostgreSQL, and the results were verified to ensure that the salaries were correctly classified.

PROCEDURE: 
1.	The pgAdmin (PostgreSQL) application was opened to access the database environment.
2.	A new employees table was created in the database with fields such as emp_id, emp_name, and salary to store employee salary information.
 <img width="715" height="180" alt="image" src="https://github.com/user-attachments/assets/2da3e1a6-08c0-43a0-80a3-23c4b757cf3e" />

3.	Sample employee records were inserted into the table using INSERT statements to provide data for testing the SQL queries.
 <img width="622" height="171" alt="image" src="https://github.com/user-attachments/assets/3af9a07a-5a5f-4ed7-91cc-f16db020ca7b" />

4.	A SELECT query using the MOD / % operator was written to determine whether each employee’s salary is odd or even.
5.	A CASE statement was used in the SELECT query to display an additional column indicating “Even Salary” or “Odd Salary” based on the modulus operation.
 <img width="770" height="196" alt="image" src="https://github.com/user-attachments/assets/0038cd0b-44a3-4cb8-b15c-d11c474467e3" />

6.	The SQL queries were executed in the database environment to check the classification of salaries as odd or even.
7.	The output results were observed and verified to ensure that the modulus operator correctly identified even and odd salary values.
8.	The results were recorded and the queries and outputs were saved for documentation and reference.

<br>CODE:
<br>CREATE TABLE employees 
<br>(
<br>    emp_id INT PRIMARY KEY,
<br>    emp_name VARCHAR(50),
<br>    salary INT  
<br>);

INSERT INTO employees VALUES
(1, 'Charles', 67000),
(2, 'Max', 55501),
(3, 'George', 82000),
(4, 'Daniel', 75003);

SELECT emp_name, salary,
<br>CASE
<br>    WHEN salary % 2 = 0 THEN 'EVEN'
<br>    ELSE 'ODD'
<br>END AS salary_type
<br>FROM employees;

I/O ANALYSIS: 
1.	Creating the Employees Table
Creates a table to store employee details such as employee ID, employee name, and employee salary.
 <img width="682" height="120" alt="image" src="https://github.com/user-attachments/assets/2094b8b2-0f46-4073-97da-fbcff2a9ad81" />

2.	Inserting Employee Records
Inserts sample employee data into the employees table for testing and analysis.
 <img width="655" height="120" alt="image" src="https://github.com/user-attachments/assets/c9b5abda-fde4-4012-ae35-3c2bb5da2b16" />

3.	Using the Modulus Operator (MOD / %) and CASE Statement
Applies the MOD or % operator to check whether the employee salary value is odd or even and uses a CASE statement in the SELECT query to display whether the salary is Even Salary or Odd Salary.
 <img width="551" height="230" alt="image" src="https://github.com/user-attachments/assets/fd3b64f0-3431-44df-ba27-28684e2225a6" />


LEARNING OUTCOMES: 
1.	Understood the use of the modulus operator (MOD / %) in SQL to analyze numerical values.
2.	Learned how to apply conditional logic using CASE statements in SQL queries.
3.	Gained practical experience in writing and executing SQL queries to classify employee salaries as odd or even.
 
