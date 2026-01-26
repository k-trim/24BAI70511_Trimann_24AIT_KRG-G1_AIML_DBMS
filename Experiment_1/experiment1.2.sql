SELECT * FROM BOOKS

INSERT INTO BOOKS VALUES(102, 'The Great Gatsby', 'Fitzgerald', 3)


SELECT table_name, privilege_type
FROM information_schema.table_privileges
WHERE grantee = 'librarian'