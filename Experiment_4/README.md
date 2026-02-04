Experiment 4

Name: Trimann Kaur	

UID: 24BAI70511

Branch: B.E. CSE (AIML)	

Section: 24AIT_KRG-G1

Semester: 4	

Date of Performance: 04.02.2026

Subject Name: Database Management System	

Subject Code: 24CSH-298

<br>
AIM: To design and implement PL/SQL programs utilizing conditional control statements such as IF–ELSE, ELSIF, ELSIF ladder, and CASE constructs in order to control the flow of execution based on logical conditions and to analyze decision-making capabilities in PL/SQL blocks.

<br><br>
OBJECTIVES: 

●	Implement control structures in PL/SQL (IF-ELSE, ELSE-IF, ELSE-IF LADDER, CASE STATEMENTS in PL-SQL BLOCK). 

<br>
SOFTWARE REQUIREMENTS:
•	Oracle FreeSQL

<br><br>
PRACTICAL/EXPERIMENT STEPS: 
1.	Different conditional control structures such as IF–ELSE, IF–ELSIF–ELSE, ELSIF ladder, and CASE statements were identified and studied.
2.	For each problem statement, variables were declared in the DECLARE section to store input values such as numbers, marks, and day numbers.
3.	Logical conditions were applied inside the BEGIN and END block using appropriate conditional statements.
4.	Based on the evaluated conditions, corresponding output messages were displayed using DBMS_OUTPUT.PUT_LINE.
5.	Each PL/SQL block was executed independently to observe and analyze decision-making behavior.
6.	The outputs were verified to ensure correctness of logic and flow control.

<br><br>
PROCEDURE: 
1.	Start the Oracle FreeSQL environment. 
2.	A PL/SQL block was written to demonstrate the IF–ELSE statement, where a number NUM was checked to determine whether it is positive or non-positive.
 <img width="370" height="131" alt="1" src="https://github.com/user-attachments/assets/0714f45a-c735-4468-90ba-f135e2275f4d" />

3.	Another PL/SQL block was written using the IF–ELSIF–ELSE statement to evaluate a student’s grade based on the marks obtained.
 <img width="383" height="177" alt="2" src="https://github.com/user-attachments/assets/4b4ad891-ad10-40d7-888d-19230147def9" />

4.	A separate PL/SQL block implementing an ELSIF ladder was executed to determine the performance status of a student based on different mark ranges.
 <img width="389" height="183" alt="3" src="https://github.com/user-attachments/assets/002061a9-bc88-4d86-96a9-2c75c607610b" />

5.	A PL/SQL block using the CASE statement was written to display the name of the day corresponding to a given day number.
 <img width="403" height="236" alt="4" src="https://github.com/user-attachments/assets/c9acfea1-9beb-4163-ac48-0792c2e27731" />

6.	All PL/SQL blocks were executed in the Free SQL environment, and the output for each block was observed.
7.	The results obtained were verified to confirm the correct functioning of conditional control statements. 

<br><br>
CODE:
    
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

<br>
I/O ANALYSIS: 
1.	IF–ELSE Statement
Displays whether the given number is positive or non-positive.
 <img width="272" height="86" alt="5" src="https://github.com/user-attachments/assets/b946ba72-5207-442a-8861-02a842c2d94f" />

2.	IF–ELSIF–ELSE Statement
Displays the grade of the student based on the marks obtained.
 <img width="287" height="89" alt="6" src="https://github.com/user-attachments/assets/e00296bd-6737-4687-b8e9-184e057e8cc1" />

3.	ELSIF Ladder
Displays the performance status of the student according to the marks range.
 <img width="314" height="83" alt="7" src="https://github.com/user-attachments/assets/f1f19c6a-d0e4-439b-87a9-5ba28ce28b11" />

4.	CASE Statement
Displays the name of the day corresponding to the given day number or an invalid message
 <img width="332" height="86" alt="8" src="https://github.com/user-attachments/assets/793fbc86-fdea-4d18-abee-0c81a374e64f" />

<br><br>
LEARNING OUTCOMES: 
1.	Understood the use of conditional control statements such as IF–ELSE, ELSIF ladder, and CASE in PL/SQL.
2.	Gained the ability to implement decision-making logic to control program flow based on given conditions.
3.	Learned to execute and analyze PL/SQL programs. 
