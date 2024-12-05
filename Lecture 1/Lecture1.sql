-- How To Check Database In Your Localhost?
-- What is localhost: 127.0.0.1 -- IP address 
-- Without internet we can access becasue its your system
-- We Can Access Databases in remote server ex: 192.168.4.42
-- Please Check Localhost Image in Lecture 1 Folder

SHOW DATABASES;
-- Note:
-- While creating a database,
-- you may encounter an error such as ERROR 1044 (42000): 
-- Access denied for user 'Diksha'@'localhost' to database 'DatabaseName', 
-- this means that you do not have the necessary privileges to create a database. 
-- To create a database, you need to have admin previleges.

CREATE DATABASE testDB;
-- TODO: Try to create testDB Again.
-- You will get error to try this
-- Error Code: 1007. Can't create database 'testdb'; database exists

USE testDB;

USE unknownDatabase;
-- TODO: Try to drop testDB1 Again.
-- You will get error to try this
-- Error Code: 1049. Unknown database 'unknowndatabase'

-- How to Drop Database
CREATE DATABASE testDB1;
SHOW DATABASES;

DROP DATABASE testDB1;
-- TODO: Try to drop testDB1 Again.
-- You will get error to try this
-- Error Code: 1008. Can't drop database 'testdb1'; database doesn't exist

DROP DATABASE IF EXISTS testDB2;
-- 0 row(s) affected, 1 warning(s): 1008 Can't drop database 'testdb2'; database doesn't exist

-- TODO: Deleting Multiple Databases ?
DROP DATABASE testDB3, testDB4;
/*
The command DROP DATABASE testDB3, testDB4; is not working in SQL 
because the DROP DATABASE statement in SQL only supports dropping one database at a time. 
You cannot drop multiple databases in a single DROP DATABASE command.
*/

-- Can we create database and name it as any keyword
CREATE DATABASE SELECT;
-- Error Code: 1064. You have an error in your SQL syntax; 
-- check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELECT' at line 1

-- Why Error Code is Important? 
-- As we discussed we can easily find solution with the help of ErrorCode
-- There is many community which helps to resolve issue
-- Not all issue is present in Youtube video but there is chance we can find in community

-- Can we Rename Database ?
-- Let's Try in setting of DB

-- Can we use LIKE Operator with Show Database?
CREATE DATABASE testDB1;
CREATE DATABASE testDB2;
CREATE DATABASE testDB3;

SHOW DATABASES LIKE 'test%';


-- You can use the SHOW SCHEMAS statement as an alternate 
-- for 
-- the SHOW DATABASES statement..

SHOW SCHEMAS;

SHOW SCHEMAS LIKE 'test%';