-- What is SQL?
/*
SQL stands for Structured Query Language
SQL lets you access and manipulate databases
*/

-- RDBMS
/*
RDBMS stands for Relational Database Management System.
RDBMS is the basis for SQL, and for all modern database systems 
such as MS SQL Server, IBM DB2, Oracle, MySQL, and Microsoft Access.
The data in RDBMS is stored in database objects called tables.
A table is a collection of related data entries and it consists of columns and rows.
Look at the "Customers" table:
*/

-- Check ER Diagram in Lecture 1 Folder 
-- https://app.diagrams.net/    -- draw.io


-- Keywords : Reserved Words in SQL
/*
SQL keywords are NOT case sensitive: select is the same as SELECT
*/

-- SQL Comments: 
-- Comments are used to explain sections of SQL statements, or to prevent execution of SQL statements.

-- Single Line Comments
-- SELECT * FROM Customers;
SELECT * FROM Products;

-- Multi-line Comments
/* Select all the columns
of all the records
in the Customers table: */
SELECT * FROM Customers;

