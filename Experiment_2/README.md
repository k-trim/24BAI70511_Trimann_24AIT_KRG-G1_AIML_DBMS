Experiment 2
Name: Trimann Kaur	
UID: 24BAI70511
Branch: B.E. CSE (AIML)	
Section: 24AIT_KRG-G1
Semester: 4	
Date of Performance: 16.01.2026
Subject Name: Database Management System	
Subject Code: 24CSH-298

AIM: To understand and implement SQL SELECT queries using various clauses such as WHERE, ORDER BY, GROUP BY, and HAVING to retrieve and manipulate data efficiently from relational database tables.

OBJECTIVES: 
●	To practice writing SQL SELECT statements.
●	To apply filtering conditions using the WHERE clause.
●	To sort query results using the ORDER BYclause.
●	To group records using the GROUP BY clause.
●	To filter grouped data using the HAVING clause.
●	To analyze data using aggregate functions like COUNT(), SUM(), AVG(), MIN(), and MAX(). 

SOFTWARE REQUIREMENTS:
•	Database Management System
    o	PostgreSQL
•	Database Administration Tool
    o	pgAdmin

PRACTICAL/EXPERIMENT STEPS: 	
1.	Display the department name and the average salary of employees for each department.
2.	Consider only those employees whose salary is greater than 20,000. 
3.	Display only those departments where the average salary is greater than 30,000.
4.	Arrange the final output in descending order of average salary.


PROCEDURE: 
1.	Open PostgreSQL and create a new database.
2.	 Execute the following command to create a table EMPLOYEE.
<img width="382" height="225" alt="image" src="https://github.com/user-attachments/assets/2307e387-7f0a-4189-a384-c57e716f3c90" />

3.	Using INSERT command, insert records into table EMPLOYEE.
<img width="979" height="163" alt="image" src="https://github.com/user-attachments/assets/033ab517-8736-4e69-a7dc-d2894b007a52" />

4.	Display the department name and average salary of employees for each department using using SELECT and GROUP BY command, and AVG() function. 
<img width="979" height="74" alt="image" src="https://github.com/user-attachments/assets/9a3e2503-d7e0-45e3-94a7-6a45bc6faf79" />

5.	Filter employees having salary greater than 20,000 using HAVING.  
<img width="628" height="202" alt="image" src="https://github.com/user-attachments/assets/77ac71dc-5b83-45b9-ab02-8d91fd69a0b7" />

6.	Display only departments where average salary is greater than 30,000 using HAVING.
<img width="979" height="96" alt="image" src="https://github.com/user-attachments/assets/6046e0c4-6fdc-49b8-96c6-af7d43d6172b" />

7.	Sort the result in descending order of average salary using ORDER BY.
<img width="979" height="100" alt="image" src="https://github.com/user-attachments/assets/df41847c-a81b-4b97-ace5-3eb7fbec1471" />


I/O ANALYSIS:
•	The EMPLOYEE table was created successfully.  
<img width="723" height="53" alt="image" src="https://github.com/user-attachments/assets/18c6cc6f-2557-4a72-85c1-142346568de9" />

•	Records inserted into EMPLOYEE table. 
<img width="828" height="220" alt="image" src="https://github.com/user-attachments/assets/3f07bdce-ea52-4f58-a018-5cec86592cb7" />

•	Department-wise average salary was calculated and displayed.  
<img width="573" height="226" alt="image" src="https://github.com/user-attachments/assets/86532bbc-3018-4f5c-862d-2ff919120931" />

•	Employees having salary greater than 20,000 were retrieved.
<img width="541" height="176" alt="image" src="https://github.com/user-attachments/assets/b21f3bd1-a133-46a8-9945-8f31669d44b8" />

•	Departments with average salary above 30,000 were displayed.
<img width="561" height="132" alt="image" src="https://github.com/user-attachments/assets/5f299c2f-ee85-4af0-82e9-2dfec4a304e6" />

•	The final output was sorted in descending order of average salary.
<img width="560" height="219" alt="image" src="https://github.com/user-attachments/assets/963f6e3f-53ec-4532-aedb-74baf18712df" />
 

LEARNING OUTCOMES: 
1.	Filter records using the WHERE clause.
2.	Group records using GROUP BY.
3.	Apply conditions on grouped data using HAVING.
4.	Sort query results using ORDER BY.



