Experiment 9

Name: Trimann Kaur	

UID: 24BAI70511

Branch: B.E. CSE (AIML)	

Section: 24AIT_KRG-G1

Semester: 4	

Date of Performance: 17.04.2026

Subject Name: Database Management System	

Subject Code: 24CSH-298


AIM: To create and implement PL/SQL packages by developing a package specification and package body containing procedures and shared cursors, in order to achieve modular, reusable, and efficient database programming.


OBJECTIVES: 

•	To design and implement a PL/SQL package that includes procedures and shared cursors for structured and modular program development. 


SOFTWARE REQUIREMENTS: 

•	Database Management System:

o	Oracle

•	Database Administration Tool:

o	Oracle SQL Developer


PRACTICAL/EXPERIMENT STEPS: 
1.	An employees table was created to store employee details such as ID, name, salary, and department. 
2.	Sample records were inserted into the employees table for testing purposes. 
3.	A PL/SQL package specification was created to declare procedures related to employee data. 
4.	A package body was developed to implement the logic of the declared procedures. 
5.	A shared cursor was defined inside the package to retrieve employee records efficiently. 
6.	A procedure display_all_employees was implemented to display all employee details using the cursor. 
7.	A procedure display_employee was created to fetch details of a specific employee using employee ID. 
8.	The package procedures were executed to verify correct functionality and output.


PROCEDURE: 
1.	Oracle SQL environment (SQL Developer / FreeSQL) was opened and the required database was selected. 
2.	The employees table was created using the CREATE TABLE command. 
3.	Sample data was inserted into the table using INSERT statements. 
4.	A package specification was created using CREATE OR REPLACE PACKAGE to declare procedures. 
5.	A package body was created using CREATE OR REPLACE PACKAGE BODY to define procedures and a shared cursor. 
6.	Procedures were written to display all employees and to retrieve a specific employee by ID. 
7.	The package procedures were executed using BEGIN ... END; blocks. 
8.	The output was displayed using DBMS_OUTPUT.PUT_LINE and verified for correctness. 

 
CODE:

    CREATE TABLE employees (
        emp_id NUMBER PRIMARY KEY,
        emp_name VARCHAR2(50),
        salary NUMBER,
        department VARCHAR2(50)
    );
    
    INSERT INTO employees VALUES (101, 'Rahul', 50000, 'HR');
    INSERT INTO employees VALUES (102, 'Anita', 60000, 'Finance');
    INSERT INTO employees VALUES (103, 'Karan', 55000, 'IT');
    INSERT INTO employees VALUES (104, 'Neha', 65000, 'Marketing');
    
    COMMIT;
    
    CREATE OR REPLACE PACKAGE emp_package AS
        PROCEDURE display_all_employees;\
        PROCEDURE display_employee(p_emp_id NUMBER);
    
    END emp_package;
    /
    
    CREATE OR REPLACE PACKAGE BODY emp_package AS
        CURSOR emp_cursor IS
            SELECT emp_id, emp_name, salary, department
                FROM employees;
        
        PROCEDURE display_all_employees IS
        BEGIN
            FOR emp_rec IN emp_cursor LOOP
                DBMS_OUTPUT.PUT_LINE(
                    emp_rec.emp_id || ' | ' ||
                    emp_rec.emp_name || ' | ' ||
                    emp_rec.salary || ' | ' ||
                    emp_rec.department
                );
            END LOOP;
        END display_all_employees;
    
        PROCEDURE display_employee(p_emp_id NUMBER) IS
            v_emp employees%ROWTYPE;
        BEGIN
            SELECT * INTO v_emp
            FROM employees
            WHERE emp_id = p_emp_id;
    
            DBMS_OUTPUT.PUT_LINE(
                v_emp.emp_id || ' | ' ||
                v_emp.emp_name || ' | ' ||
                v_emp.salary || ' | ' ||
                v_emp.department
            );
    
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                DBMS_OUTPUT.PUT_LINE('Employee not found.');
        END display_employee;
    END emp_package;
    /
    
    SET SERVEROUTPUT ON;
    
    BEGIN
        emp_package.display_all_employees;
    END;
    /
    
    BEGIN
        emp_package.display_employee(102);
    END;
    /


I/O ANALYSIS: 
1.	Create a table
The employees table is successfully created with fields such as emp_id, emp_name, salary, and department. The emp_id is defined as a primary key, ensuring unique employee records.
<img width="187" height="119" alt="1" src="https://github.com/user-attachments/assets/160b5b66-3718-40bb-8b8f-eed2fb3d05ed" />

 
2.	Insert Records
Sample employee records are inserted into the table successfully. The table now contains multiple employee entries for testing the package procedures.  
 <img width="325" height="79" alt="2" src="https://github.com/user-attachments/assets/6ed55db5-1510-471a-97d4-7865f8628edd" />

 <img width="163" height="83" alt="3" src="https://github.com/user-attachments/assets/5eca003c-f9c1-4628-aaa1-9ffa8dec8996" />



3.	Creating Package Specification
The package specification emp_package is created successfully. It declares procedures to display all employees and to fetch a specific employee using ID. 
 <img width="254" height="125" alt="4" src="https://github.com/user-attachments/assets/c934975f-e63d-480a-a69d-9cfc47154bea" />


4.	Creating Package Body with Shared Cursor
The package body is created successfully. A shared cursor (emp_cursor) is defined to retrieve employee records efficiently and is used across procedures. 
 <img width="256" height="117" alt="5" src="https://github.com/user-attachments/assets/83f63d4b-2e3b-4175-9b3b-9e5e69b0a6eb" />

 
5.	Display Employee Details (All & Specific)
The procedures display_all_employees and display_employee are executed successfully. All employee records are displayed using the shared cursor, and specific employee details are retrieved correctly using employee ID. 
  <img width="224" height="98" alt="6" src="https://github.com/user-attachments/assets/7a2c9e56-8ab1-4ae1-8daa-0cec8b6c5e71" />
  

  <img width="208" height="69" alt="7" src="https://github.com/user-attachments/assets/9158ab33-23e3-4595-8c99-6d88bcd0d7f3" />

  


LEARNING OUTCOMES: 
1.	Understood the concept and structure of PL/SQL packages.
2.	Differentiated between package specification and package body.
3.	Developed packages containing procedures and shared cursors.
4.	Wrote modular and reusable PL/SQL code.
5.	Applied package development techniques used in organizations such as Rippling, Oracle, SAP, and PayPal.
