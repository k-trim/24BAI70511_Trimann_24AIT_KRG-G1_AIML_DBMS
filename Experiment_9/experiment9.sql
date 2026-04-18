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
    PROCEDURE display_all_employees;
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