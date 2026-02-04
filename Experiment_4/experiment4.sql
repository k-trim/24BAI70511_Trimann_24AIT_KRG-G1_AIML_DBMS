-- IF–ELSE Statement
DECLARE 
NUM NUMBER := -8;
BEGIN
    IF NUM > 0 THEN
        DBMS_OUTPUT.PUT_LINE(NUM || ' is positive.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(NUM || ' is non-positive.');
    END IF;
END;

/

-- IF-ELSIF–ELSE Statement
DECLARE 
MARKS INTEGER := 93;
BEGIN 
    IF MARKS >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: A');
    ELSIF MARKS >= 75 THEN
    DBMS_OUTPUT.PUT_LINE('Grade: B');
    ELSIF MARKS >= 50 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: C');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Grade: Fail');
    END IF;
END;

/

-- ELSIF Ladder
DECLARE
MARKS INTEGER := 96;
BEGIN
    IF marks >= 85 THEN
    DBMS_OUTPUT.PUT_LINE('Performance: Excellent');
    ELSIF marks >= 70 THEN
    DBMS_OUTPUT.PUT_LINE('Performance: Very Good');
    ELSIF marks >= 50 THEN
    DBMS_OUTPUT.PUT_LINE('Performance: Good');
    ELSE
    DBMS_OUTPUT.PUT_LINE('Performance: Needs Improvement');
    END IF;
END;

/

-- CASE Statement
DECLARE 
DAY_NO INTEGER := 6;
DAY VARCHAR2(10);
BEGIN
    DAY := CASE DAY_NO
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
        WHEN 7 THEN 'Sunday'
        ELSE 'Invalid Day Number'
    END;

    DBMS_OUTPUT.PUT_LINE('Day: ' || DAY);
END;