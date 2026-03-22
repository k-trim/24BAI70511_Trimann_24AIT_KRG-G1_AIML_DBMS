CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    emp_sal NUMBER
);

INSERT INTO employees VALUES (101, 'Amit', 30000);
INSERT INTO employees VALUES (102, 'Riya', 45000);
INSERT INTO employees VALUES (103, 'Karan', 25000);
INSERT INTO employees VALUES (104, 'Neha', 50000);
INSERT INTO employees VALUES (105, 'Arjun', 35000);

COMMIT;

DECLARE
    v_emp_id employees.emp_id%TYPE := 101;
    v_new_sal employees.emp_sal%TYPE := 32000;
BEGIN
    UPDATE employees
    SET emp_sal = v_new_sal
    WHERE emp_id = v_emp_id;

    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee salary updated successfully');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee not found');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Rows affected: ' || SQL%ROWCOUNT);
END;
/
DECLARE
    CURSOR emp_cursor IS
        SELECT emp_id, emp_name, emp_sal FROM employees;

    v_id employees.emp_id%TYPE;
    v_name employees.emp_name%TYPE;
    v_sal employees.emp_sal%TYPE;
BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO v_id, v_name, v_sal;
        EXIT WHEN emp_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('ID: ' || v_id ||
                             ' Name: ' || v_name ||
                             ' Salary: ' || v_sal);

        IF v_sal > 40000 THEN
            DBMS_OUTPUT.PUT_LINE('Status: High Salary');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Status: Normal Salary');
        END IF;

    END LOOP;

    CLOSE emp_cursor;
END;
/