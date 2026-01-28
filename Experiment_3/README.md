Experiment 3

Name: Trimann Kaur
UID: 24BAI70511
Branch: B.E. CSE (AIML)
Section: 24AIT_KRG-G1
Semester: 4
Date of Performance: 28.01.2026
Subject Name: Database Management System
Subject Code: 24CSH-298

AIM: To understand the basic structure of a PL/SQL program by creating and executing a simple PL/SQL block that includes declaration and execution sections, and to display output using built-in procedures.

OBJECTIVES: 

●	To create a simple PL/SQL program demonstrating Declaration Section and Execution Section.

●	To understand the use of conditional statements (like IF-ELSE, IF–ELSIF–ELSE) in PL/SQL for performing decision-based operations.


SOFTWARE REQUIREMENTS:
•	Oracle FreeSQL


PRACTICAL/EXPERIMENT STEPS: 
1.	The PL/SQL block is started using the DECLARE keyword to define required variables.
2.	Variables such as employee ID, employee name, employee salary, and bonus are declared with appropriate data types and initialized with values. 
3.	Employee details like ID, name, and salary are displayed using the DBMS_OUTPUT.PUT_LINE procedure.
4.	An IF–ELSIF–ELSE conditional structure is used to calculate the bonus based on different salary ranges.
5.	If the salary is greater than or equal to 100000, the bonus is calculated as 20% of the salary.
6.	If the salary is greater than or equal to 75000, the bonus is calculated as 15% of the salary.
7.	For all other cases, the bonus is calculated as 12% of the salary.
8.	The calculated bonus amount is displayed as output.
9.	The PL/SQL block ends successfully after execution.


PROCEDURE: 
1.	Start the Oracle FreeSQL environment. 
2.	Write the following code to declare the variables.
 <img width="618" height="159" alt="image" src="https://github.com/user-attachments/assets/64b21844-e679-47c0-a793-c21f99435be9" />

3.	Inside the BEGIN block, write the following code to display the employee data using DBMS_OUTPUT.PUT_LINE.
 <img width="761" height="159" alt="image" src="https://github.com/user-attachments/assets/fd23590b-ba6a-4f73-bce9-babb5a714130" />

4.	Use IF-ELSIF-ELSE conditional statement to determine the bonus percentage based on the employee salary.
 <img width="724" height="181" alt="image" src="https://github.com/user-attachments/assets/e1a41958-2fac-494f-94b3-10e0cf03031a" />

5.	Display the final bonus using DBMS_OUTPUT.PUT_LINE. 
 <img width="667" height="66" alt="image" src="https://github.com/user-attachments/assets/ab71ada8-ad24-4ef1-a17d-86c66e0bd5f7" />

6.	End the PL/SQL block using the END; statement and execute the program.
 <img width="667" height="59" alt="image" src="https://github.com/user-attachments/assets/eef1062e-2bd0-46d6-ab74-ae6848c6fb78" />

7.	Verify the output displayed on the screen.



CODE:

DECLARE 

emp_id NUMBER:= 1001;

emp_name VARCHAR2(50):= 'Alex';

emp_salary NUMBER(12,2) := 200000;

bonus NUMBER;

BEGIN

DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_id);

DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_name);

DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || emp_salary);

IF emp_salary >= 100000 THEN

bonus := 0.20 * emp_salary;

ELSIF emp_salary >= 75000 THEN

bonus := 0.15 * emp_salary;

ELSE 

bonus := 0.12 * emp_salary;

END IF;

DBMS_OUTPUT.PUT_LINE('Bonus: '||bonus);

END;


I/O ANALYSIS:

This PL/SQL program demonstrates the basic structure of a PL/SQL block. It declares variables for employee details under the DECLARE block, and calculates a bonus using conditional statements. Based on the employee’s salary, the bonus percentage is determined using IF–ELSIF–ELSE. The program displays employee ID, name, salary, and the calculated bonus using DBMS_OUTPUT.PUT_LINE.
 <img width="702" height="278" alt="image" src="https://github.com/user-attachments/assets/ca4dbc7d-b041-4695-a187-856f089c9358" />


LEARNING OUTCOMES: 
1.	Understand the basic structure of a PL/SQL block, including the Declaration section and Execution section.
2.	Gain hands-on experience in declaring variables and performing simple operations within a PL/SQL program.
3.	Learn to display output using built-in PL/SQL procedures (such as DBMS_OUTPUT.PUT_LINE) to verify program execution.
