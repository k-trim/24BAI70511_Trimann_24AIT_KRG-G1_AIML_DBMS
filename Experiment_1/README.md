Worksheet 1
Name: Trimann Kaur	
UID: 24BAI70511
Branch: B.E. CSE (AIML)	
Section: 24AIT_KRG-G1
Semester: 4	
Date of Performance: 09.01.2026
Subject Name: Database Management System	
Subject Code: 24CSH-298

AIM: To design and implement a Library Management System database using appropriate tables, primary keys, foreign keys, and constraints, and to perform DML operations along with DCL commands such as role creation, privilege granting, and revoking to ensure database security.	

OBJECTIVES: 
1.	To implement Data Definition Language (DBL) commands for creating, altering, and deleting database tables with appropriate constraints. 
2.	To apply Data Manipulation Language (DML) commands to insert, update, retrieve, and manage records while maintaining data integrity.
3.	To understand Data Control Language (DCL) by creating user roles and managing database security through granting and revoking privileges.

SOFTWARE REQUIREMENTS:
•	Database Management System
    o	PostgreSQL
•	Database Administration Tool
    o	pgAdmin

PRACTICAL/EXPERIMENT STEPS: 
1.	A table named BOOKS was created to store book details such as Book ID, Book Name, and Author Name. Book_ID is set as the primary key. 
2.	The table BOOKS was modified using ALTER command to add a new column BOOK_COUNT with a check constraint to ensure that the BOOK_COUNT is greater than 0 and is not null.
3.	Records were inserted into the BOOKS table using INSERT commands and verified using SELECT queries. 
4.	A new table LIBRARY_VISITORS was created with attributes USER_ID, NAME, AGE and EMAIL. USER_ID is set as the primary key and data is inserted in the table using INSERT command.
5.	A new table BOOK_ISSUE was created to maintain book issue records, implementing FOREIGN KEY relationships between BOOKS and LIBRARY_VISITORS tables. USER_ID from LIBRARY_VISITORS table and BOOK_ID from BOOKS are set as the foreign key. 
6.	The ALTER table command is used to add ISSUE_DATE for issued books. UPDATE command is used to update the previous records of the table.
7.	A new user role named LIBRARIAN was created, and permissions were granted using GRANT.
8.	Permissions were later revoked using the REVOKE command to understand access control.
9.	TRUNCATE and DROP commands were executed to observe the difference between removing records and deleting tables.

PROCEDURE: 
1.	Open PostgreSQL and create a new database.
2.	Execute the following command to create a table BOOKS.
 <img width="344" height="125" alt="image" src="https://github.com/user-attachments/assets/a90ea9cd-a1b6-4bb8-b402-47b664fd4321" />
 
3.	Alter the table to add another attribute BOOK_COUNT with a constraint.
 <img width="547" height="70" alt="image" src="https://github.com/user-attachments/assets/849af072-f51f-4e74-9a82-18061ca3de12" />

4.	Insert data into the table.
  <img width="633" height="65" alt="image" src="https://github.com/user-attachments/assets/e2611f1e-d265-4305-82dd-b1714394663f" />

5.	Create a new table LIBRARY_VISITORS using CREATE command
 <img width="392" height="175" alt="image" src="https://github.com/user-attachments/assets/7aafaa9c-a937-41e0-93b6-59bdfa730062" />

6.	Insert data into this table. 
 <img width="565" height="64" alt="image" src="https://github.com/user-attachments/assets/e80b4161-445a-441d-a693-9d03cb2b2536" />
<img width="594" height="62" alt="image" src="https://github.com/user-attachments/assets/bfc59546-bc8e-46f8-9089-8452005685f9" />

 
 7.	Create a new table BOOK_ISSUE using the following command, and insert data into it.
 <img width="474" height="144" alt="image" src="https://github.com/user-attachments/assets/b39c993a-61d5-4d0a-b248-a2cfe8282ab2" />
 <img width="577" height="51" alt="image" src="https://github.com/user-attachments/assets/fd5d74d8-b420-45f5-aa92-93b5326b1b1a" />

 8.	Use the ALTER and UPDATE command as follows to update the previous records.
<img width="317" height="76" alt="image" src="https://github.com/user-attachments/assets/0a2d2b1d-896f-4021-aa3f-fbf1f164a514" />
<img width="271" height="86" alt="image" src="https://github.com/user-attachments/assets/799fb8d5-7b20-49aa-8369-94090bda57f1" />

9. Execute the following command to create a new role of LIBRARIAN. 
<img width="434" height="85" alt="image" src="https://github.com/user-attachments/assets/2a744971-0634-41d4-8230-867c6aa90583" />

10. Use GRANT command to grant access to the LIBRARIAN. 
<img width="736" height="94" alt="image" src="https://github.com/user-attachments/assets/1b464a6d-655b-4c6a-913c-2b183191d2ca" />

11. Demonstrate the use of REVOKE using the following command. 
<img width="979" height="46" alt="image" src="https://github.com/user-attachments/assets/38e3beb3-1b94-4639-b1d2-ea5333d7f02e" />

12. Use TRUNCATE to delete all records in the table, and DROP to delete the table. 
 <img width="392" height="50" alt="image" src="https://github.com/user-attachments/assets/950695f1-c3bc-42fa-9bee-5eb0411b0260" />
 <img width="329" height="46" alt="image" src="https://github.com/user-attachments/assets/523a945c-260d-44c4-bf0a-d182304cd0d3" />


I/O ANALYSIS:
•       Create table BOOKS.
<img width="373" height="136" alt="image" src="https://github.com/user-attachments/assets/25a10d74-af9c-4abf-8c9a-aa1dec7c9ddf" />
<img width="494" height="63" alt="image" src="https://github.com/user-attachments/assets/aee69cab-dc14-481d-b50c-2c63e613794e" />

  
•       Alter and insert into table BOOKS.
<img width="396" height="51" alt="image" src="https://github.com/user-attachments/assets/5eef9a1e-114e-4de0-ae39-52a113627adf" />
<img width="633" height="65" alt="image" src="https://github.com/user-attachments/assets/9d173cbb-8e9b-4fea-b5c8-40a0256d02cf" />
<img width="329" height="65" alt="image" src="https://github.com/user-attachments/assets/e1521104-497b-4083-a9d0-7bd0aa6ae7d9" />

  
•   	Create table LIBRARY_VISITORS.
<img width="427" height="131" alt="image" src="https://github.com/user-attachments/assets/d36f5e18-7150-48ec-91c0-3ef1bc133c13" />
<img width="477" height="52" alt="image" src="https://github.com/user-attachments/assets/41b67fcf-1fe8-4bbf-aef1-bccec6560b01" />

•   	Insert into LIBRARY_VISITORS.
<img width="452" height="51" alt="image" src="https://github.com/user-attachments/assets/a28e1529-15d8-49c0-af71-719dae56478e" />
<img width="452" height="48" alt="image" src="https://github.com/user-attachments/assets/1759b9fb-fb24-407d-aee3-9b3bf43f619a" />
<img width="398" height="83" alt="image" src="https://github.com/user-attachments/assets/1b094c4f-a2ef-472e-85db-bbf6582b8b4b" />

•       Create table BOOK_ISSUE with foreign key. Alter and update it. 
<img width="330" height="87" alt="image" src="https://github.com/user-attachments/assets/2f3e6b32-2754-40e7-940f-ce3361b114c8" />

•       Alter table BOOK_ISSUE.
<img width="419" height="85" alt="image" src="https://github.com/user-attachments/assets/8cce8841-5d1c-403d-8d8a-1990acb296cd" />

•       Update BOOK_ISSUE.
<img width="413" height="86" alt="image" src="https://github.com/user-attachments/assets/d071ee8d-1e21-4631-9a65-d454b2b3c39b" />

•       Creating a new role, and granting access.
<img width="388" height="101" alt="image" src="https://github.com/user-attachments/assets/f35d7d3a-ae38-4e8a-b73a-5096e0195a84" />

•   	Revoke access.
<img width="369" height="85" alt="image" src="https://github.com/user-attachments/assets/af271a48-2531-449a-a2cf-d9880bff4cf7" />
<img width="438" height="91" alt="image" src="https://github.com/user-attachments/assets/f47b9bcf-bb19-476c-86c8-4783b9d6561e" />

•   	Truncate table BOOK_ISSUE.
<img width="461" height="62" alt="image" src="https://github.com/user-attachments/assets/4f52518c-5aef-4fbc-b9d5-d6039ea5d768" />

•   	Drop table BOOK_ISSUE. 
<img width="561" height="46" alt="image" src="https://github.com/user-attachments/assets/fff4c799-dc89-4362-b8c0-8096d5815f41" />
 

LEARNING OUTCOMES: 
1.	Understanding of creating and managing database structures using DBL commands.
2.	Inserting, updating, and retrieving data using DML queries while maintaining data integrity.
3.	Knowledge of controlling database access by creating roles and applying DCL commands.


