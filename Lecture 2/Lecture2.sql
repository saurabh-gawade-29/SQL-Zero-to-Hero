CREATE TABLE CUSTOMERS(
   ID          INT NOT NULL,
   NAME        VARCHAR (255) NOT NULL,
   AGE         INT NOT NULL,
   ADDRESS     CHAR (25),
   SALARY      DECIMAL (18, 2),
   PRIMARY KEY (ID)
);

-- If table is exsist still you try to create
-- Error Code: 1050. Table 'customers' already exists


CREATE TABLE IF NOT EXISTS CUSTOMERS2(
   ID          INT NOT NULL,
   NAME        VARCHAR (20) NOT NULL,
   AGE         INT NOT NULL,
   ADDRESS     CHAR (25),
   SALARY      DECIMAL (18, 2),
   PRIMARY KEY (ID)
);

-- If table is exsist still you try to create using IF NOT EXISTS
-- 0 row(s) affected, 1 warning(s): 1050 Table 'customers' already exists

-- Creating a Table from an Existing Table
CREATE TABLE SALARY AS
SELECT ID, SALARY
FROM CUSTOMERS;

-- MySQL - Listing Tables
SHOW TABLES;

-- If Your Selected DB is testDB and you want to access any table from another table
-- then write like below

SELECT * FROM testdb1.CUSTOMERS2;

-- Now INSERT THE VALUE
INSERT INTO CUSTOMERS (ID, NAME, AGE, ADDRESS, SALARY) 
VALUES (1, 'John Doe', 30, '123 Main St', 50000.00);

-- CHECK FOR NAME IS EMPTY STRING AND SALARY WHICH IS NOT IN FLOAT
INSERT INTO CUSTOMERS (ID, NAME, AGE, ADDRESS, SALARY) 
VALUES (2, '', 30, '123 Main St', 50000);

-- CHECK FOR NAME IS NULL AND SALARY WHICH IS NOT IN FLOAT
INSERT INTO CUSTOMERS (ID, NAME, AGE, ADDRESS, SALARY) 
VALUES (2, NULL, 30, '123 Main St', 50000.55);

-- Try to add address length more than 25 
INSERT INTO CUSTOMERS (ID, NAME, AGE, ADDRESS, SALARY) 
VALUES (2, 'John Doe', 30, '123 Main St 123 Main St 123 Main St 123 Main St 123 Main St 123 Main St 123 Main St 123 Main St 123 Main St', 50000.55);
-- Error Code: 1406. Data too long for column 'ADDRESS' at row 1

SELECT * FROM CUSTOMERS;

-- We Can Rename the table
RENAME TABLE CUSTOMERS2 TO CUSTOMERS3;

-- DROP TABLE
TRUNCATE TABLE CUSTOMERS;

-- We Can Insert Multiple Values in using below cmd
INSERT INTO CUSTOMERS VALUES 
(1, 'Ramesh', 32, 'Ahmedabad', 2000.00 ),
(2, 'Khilan', 25, 'Delhi', 1500.00 ),
(3, 'Prasad', 23, 'Kota', 2000.00 ),
(4, 'Chaitali', 25, 'Mumbai', 6500.00 ),
(5, 'Hardik', 27, 'Bhopal', 8500.00 ),
(6, 'Shreya', 22, 'Hyderabad', 4500.00 ),
(7, 'Muffy', 24, 'Indore', 10000.00 );

SELECT * FROM CUSTOMERS;

-- Data is persist
RENAME TABLE CUSTOMERS to BUYERS;
SELECT * FROM BUYERS;

RENAME TABLE BUYERS to CUSTOMERS;
