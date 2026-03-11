DECLARE
num1 NUMBER := 6;
num2 NUMBER := 7;

BEGIN
    IF mod(num1, 2) = 0 THEN
    DBMS_OUTPUT.PUT_LINE(num1 || ' IS EVEN');
    ELSE
    DBMS_OUTPUT.PUT_LINE(num1 || ' IS ODD');
    END IF;
    
    IF mod(num2, 2) = 0 THEN
    DBMS_OUTPUT.PUT_LINE(num2 || ' IS EVEN');
    ELSE
    DBMS_OUTPUT.PUT_LINE(num2 || ' IS ODD');
    END IF;
END;