DECLARE
salary NUMBER := 67000;

BEGIN
    IF mod(salary, 2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Salary is even');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary is odd');
    END IF;
END;
