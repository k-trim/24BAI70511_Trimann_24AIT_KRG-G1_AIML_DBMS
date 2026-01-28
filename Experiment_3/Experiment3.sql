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