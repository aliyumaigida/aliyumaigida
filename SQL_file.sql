-- create table Customer_table(
-- customer_id INT PRIMARY KEY AUTO_INCREMENT,
-- full_name varchar(45),
-- gender varchar(6),
-- phone_no varchar(12),
-- email varchar(30),
-- address varchar(45),
-- state varchar(15),
-- nationality varchar(15)
-- );

-- YOU ARE WELCOME TO SQL CLASS--
-- INTRODUCTION TO STRUCTURAL QUERY LANGUAGE
-- OBJECTIVE OF THE COURSE
-- 1. TO UNDERSTAND A RELATIONAL DATABASE
-- 2. TO UNDERSTAND SQL
-- 3. TO UNDERSTAND WHAT YOU CAN DO TO A RELATIONAL DATABASE USING SQL

-- A RDB IS A COLLECTION OF DATA STORED IN TABLES. A TABLE CONTAIN COLUMNS AND ROWS.
-- TABLE NAMES MUST BE UNIQUE WITHIN A DATABASE. Table name must starts with a letter while other character can be combinations of letters, characters and numbers
-- The rows of a table does not have a name and their position is not fixed in the table

-- SQL is the most popular relational database language. Its full meaning is STRUCTURAL QUERY LANGUAGE. It can also be called "SEQUEL"
-- IT WAS DEVELOPED BY IBM TEAM IN 1974. 

-- SQL CONSIST OF SIX BASIC STATEMENTS (CREATE, SELECT, INSERT, UPDATE, DROP, DELETE). THEY CAN BE GROUPED INTO THREE CATEGORIES
-- DEFINITION STATEMENT---- (CREATE, DROP). CREATE IS USED TO DEFINE NEW TABLE, DATABASE, VIEWS, INDICES, ETC. DROP STATEMENT REMOVES THIS COMPONENTS WHEN THEY ARE NO LONGER NEEDED
-- MAINTENANCE STATEMENT --- (INSERT, UPDATE, DELETE) INSERT CREATE NEW SINGLE OR MULTIPLE ROWS IN A TABLE, UPDATE MODIFY THE VALUES IN A ROW, DELETE REMOVES A ROW FROM THE TABEL
-- QUERY STATEMENT ----- (SELECT). IT IS USED TO FORMULATE ALL THE QUERIES. TO ASK QUESTIONS THAT ALL THE ANSWERS ARE IN THE TABLE OR MULTIPLE TABLES OF A DATABASE

-- A SQL STATEMENT CONTAIN A COLLECTION OF CLAUSES, KEYWORDS, AND PARAMETERS THAT FORMS A PARTICULAR FUNCTION
-- E.G. SELECT column FROM table WHERE column comparison

-- CLAUSES
-- VARIOUS CLAUSES IN SQL ARE NAMED AFTER THEIR INITIAL WORDS. EACH CLAUSE SHOULD BE WRITTEN ON A SINGLE LINE FOR CLARITY
-- EXAMPLE OF CLAUSES ARE SELECT, FROM, WHERE, GROUP BY, ORDER BY, ETC.

-- Keywords
-- This are reserved words that are used for special purposes. they are not to be used as column names or table names
-- they can be written in lowercase, uppercase or mixed case --

-- Parameters
-- These are the variable parts of a SQL statement. they are the table names, column names

-- constraints
-- Constraints in SQL are used to define rules for data stored in a table. They help maintain accuracy, integrity, and reliability by limiting what type of data can be entered into the table. If any violations occur between the constraint 
-- rules and the action performed on that specific piece of data, then it will not complete successfully. 
-- Constraints may be specified at either column or table level. -- 
-- 7 major constraints are
-- NOT NULL: stop blank or null values from being entered into a certain column of an SQL table,
-- UNIQUE : The UNIQUE constraint prevents the same value from being entered twice into a specified column.
-- PRIMARY KEY : A primary key of a database table serves as a unique identifier for each row.
-- It must have distinct values and cannot be null, combining the NOT NULL and UNIQUE constraints --
-- FOREIGN KEY: A foreign key is a type of field in one table that links it to another by referencing the primary key of the other. 
-- This allows for each row in both tables to be identified uniquely through this link between them
-- CHECK : The CHECK constraint is one of the types of constraints in SQL that can be used to make sure that data meets certain requirements before it is inserted into a table
-- DEFAULT : When you use the DEFAULT constraint with a SQL column, it will automatically insert the specified default value when no other value is provided.
-- This means that if someone tries to add data without specifying any values for this particular column, then the DEFAULT value set up by you will be used instead.
 -- It helps ensure columns have some value in them and can help prevent unexpected empty fields from appearing in your database tables.
-- CREATE INDEX: In SQL, the CREATE INDEX constraint is used to make it easier for a database system to quickly retrieve data. 
-- This works like an index in a book where each page has its number or heading and you can find information faster by just looking at the numbers instead of reading through every single page one by one

-- DATA TYPE
-- Data types define the type of value a column can hold, such as numbers, text, or dates
-- It ensures that data is stored efficiently and accurately.
-- why you need to choose the right data type
-- Data Integrity: Prevents invalid data from being entered into the database (e.g., storing text in a numeric column).
-- Efficient Storage: Reduces storage costs by allocating only the necessary space for data.
-- Query Performance: Improves query performance by enabling faster indexing and search operations.
-- Application Compatibility: Ensures smooth interaction between the database and applications by enforcing consistency in data handling.
-- float, int,  char, varchar(non-unicode with max length of 8000), tinyint, bigint, date, time,datetime, decimal, text, real, Nchar, Nvarchar(unicode with max lentgh of 4000)
-- binary, bit, image, boolean, geometry, xml.

#using data defination lamguage
#CREATE DATABASE School_db;
-- The above line of code is use to carete database
# to activate the database so that we can make use of it
#USE School_db;
#DROP DATABASE school_db;
#to create a table student


-- CREATE TABLE Student_table (
--     Student_id INT PRIMARY KEY AUTO_INCREMENT,
--     First_name VARCHAR(50) NOT NULL,
--     Last_name VARCHAR(50) NOT NULL,
--     Date_of_birth DATE NOT NULL,
--     Age INT NOT NULL CHECK (Age >= 15 AND Age <= 21),
--     Gender VARCHAR(10) NOT NULL,
--     Email VARCHAR(50) NOT NULL UNIQUE,
--     Phone_number VARCHAR(15) NOT NULL UNIQUE
-- );

-- CREATE TABLE Staff_table (
--     Staff_id INT PRIMARY KEY AUTO_INCREMENT,
--     First_name VARCHAR(50) NOT NULL,
--     Last_name VARCHAR(50) NOT NULL,
--     Job_title VARCHAR(50) NOT NULL,
--     Hire_date DATE NOT NULL,
--     Salary DECIMAL(10, 2) NOT NULL
-- );

-- CREATE TABLE Subject_table (
--     Subject_id INT PRIMARY KEY AUTO_INCREMENT,
--     Subject_name VARCHAR(50) NOT NULL UNIQUE,
--     Student_id INT NOT NULL,
--     Staff_id INT NOT NULL,
--     FOREIGN KEY (Student_id) REFERENCES Student_table(Student_id),
--     FOREIGN KEY (Staff_id) REFERENCES Staff_table(Staff_id)
-- );

-- CREATE TABLE Performance_table (
--     Performance_id INT PRIMARY KEY AUTO_INCREMENT,
--     Student_id INT NOT NULL,
--     Score INT CHECK (Score BETWEEN 0 AND 100),
--     Grade CHAR(2) NOT NULL,
--     FOREIGN KEY (Student_id) REFERENCES Student_table(Student_id)
-- );

-- CREATE TABLE Student_payment (
--     Payment_id INT PRIMARY KEY AUTO_INCREMENT,
--     Student_id INT NOT NULL,
--     Amount_paid DECIMAL(10, 2) NOT NULL DEFAULT 0,
--     Date_paid DATE NOT NULL,
--     Amount_expected DECIMAL(10, 2) NOT NULL,
--     FOREIGN KEY (Student_id) REFERENCES Student_table(Student_id)
-- );



-- TODAY'S CLASS

-- CLASS 2: USING INSERT STATEMENT TO POPULATE OUR EMPTY TABLE

-- INSERT INTO student_table (First_name, Last_name, Date_of_birth, Age, Gender, Email, Phone_number) VALUES
-- ('John', 'Doe', '2005-04-15', 18, 'Male', 'john.doe@example.com', '1234567890'),
-- ('Emma', 'Smith', '2006-07-22', 17, 'Female', 'emma.smith@example.com', '1234567891'),
-- ('Michael', 'Brown', '2004-02-10', 19, 'Male', 'michael.brown@example.com', '1234567892'),
-- ('Sophia', 'Johnson', '2007-12-05', 16, 'Female', 'sophia.johnson@example.com', '1234567893'),
-- ('David', 'Wilson', '2005-09-30', 18, 'Male', 'david.wilson@example.com', '1234567894');


-- INSERT INTO staff_table (First_name, Last_name, Job_title, Hire_date, Salary) VALUES
-- ('Alice', 'Williams', 'Math Teacher', '2015-08-15', 55000.00),
-- ('Robert', 'Jones', 'Science Teacher', '2018-06-12', 60000.00),
-- ('Maria', 'Davis', 'English Teacher', '2016-04-20', 52000.00),
-- ('James', 'Miller', 'History Teacher', '2017-09-10', 53000.00),
-- ('Emily', 'Anderson', 'PE Teacher', '2019-01-05', 48000.00);


-- INSERT INTO subject_table (Subject_name, Student_id, Staff_id) VALUES
-- ('Mathematics', 1, 1),
-- ('Science', 2, 2),
-- ('English', 3, 3),
-- ('History', 4, 4),
-- ('Physical Education', 5, 5);


-- INSERT INTO performance_table (Student_id, Score, Grade) VALUES
-- (1, 85, 'B'),
-- (2, 92, 'A'),
-- (3, 78, 'C'),
-- (4, 88, 'B'),
-- (5, 95, 'A');


-- INSERT INTO student_payment (Student_id, Amount_paid, Date_paid, Amount_expected) VALUES
-- (1, 500.00, '2024-01-15', 1000.00),
-- (2, 750.00, '2024-02-10', 1000.00),
-- (3, 300.00, '2024-03-05', 1000.00),
-- (4, 1000.00, '2024-04-01', 1000.00),
-- (5, 800.00, '2024-05-20', 1000.00);


-- USING THE ALTER STATEMENT
-- The SQL ALTER TABLE statement is a powerful tool that allows you to modify the structure of an existing table
-- in a database. Whether you’re adding new columns, modifying existing ones, deleting columns, or renaming them, 
-- the ALTER TABLE statement enables you to make changes without losing the data stored in the table. --

-- some of the use cases of the Alter statement
-- ADD CLAUSE: To add a new column into an existing table
-- here is the syntax
-- ALTER TABLE table_name ADD column_name datatype;
-- to add a single column to a table
-- ALTER TABLE performance_table ADD Remarks  VARCHAR(30) NOT NULL;
-- update performance_table set Remarks="Very Good" where performance_id=1
-- -- to add multiple columns to a table
-- ALTER TABLE staff_table
-- ADD staff_level INT NOT NULL,
-- ADD staff_level_title varchar(50) NOT NULL;

-- MODIFY COLUMN CLAUSE: is used to modify the data definition of an existing column, such as changing its data type or size
-- here is the syntax
-- ALTER TABLE table_name MODIFY COLUMN column_name datatype;
-- example
-- ALTER TABLE Student_table MODIFY COLUMN First_name CHAR(50),
-- MODIFY COLUMN Last_name CHAR(50);

-- DROP COLUMN Clause: To delete an existing column from the table. 
-- DROP COLUMN will permanently remove the column and its data, therefore, becareful when using it.
-- here is the syntax
-- ALTER TABLE table_name DROP COLUMN column_name;
-- example
-- ALTER TABLE student_table ADD Total_amount DECIMAL(10, 2) NOT NULL;
-- ALTER TABLE  student_table DROP COLUMN total_amount;
-- RENAME COLUMN Clause: This is used to rename an existing column
-- this means that you are changing the name of the column without a loss to the existing data type and content
-- here is the syntax
-- ALTER TABLE table_name RENAME COLUMN old_name TO new_name;
-- example
-- ALTER TABLE performance_table RENAME COLUMN student_id TO student_ID;

-- RENAME TO Clause-  This is used to rename the table itself
-- here is the syntax
-- ALTER TABLE table_name RENAME TO new_table_name;
-- example
-- ALTER TABLE  staff_table RENAME TO staff_table2;

-- ADD CONSTRAINT Clause- This is used to add any constraint to a column, such as if a table has no primary key before
-- we can use ADD CONSTRAINT clause to add a primary key constraint to a column
-- here is the syntax
-- ALTER TABLE table_name ADD CONSTRAINT column_name CONSTRAINT (column_name);
-- example
-- ALTER TABLE subject_table ADD CONSTRAINT student_id UNIQUE (student_id)
-- CHECK, PRIMARY KEY, UNIQUE, FOREIGN KEY are the supported constraints
-- ALTER TABLE subject_table ADD CONSTRAINT student_id PRIMARY KEY (student_id);
-- example
-- ALTER TABLE subject_table 
-- ADD CONSTRAINT staff_id 
-- FOREIGN KEY (staff_id) REFERENCES staff_table(staff_id);
-- to add a constraint check on a column
-- ALTER TABLE student_table ADD CONSTRAINT  Phone_number CHECK ( Phone_number = 11 );

-- ALTER CLAUSE: this alters the column directly
-- ALTER TABLE student_payment ALTER Amount_expected SET DEFAULT 100;
-- ALTER TABLE student_payment ALTER Amount_expected DROP DEFAULT;

-- TODAY_CLASS
-- USE school_db
-- updating single column
-- UPDATE student_table 
-- SELECT now()
-- CREATE database advent

-- use sakila;
-- one can equally write SELECT * FROM sakila.actor; this is calling both
-- the database and the table name
-- SELECT * FROM actor;

-- selecting specific columns from a table
-- here is the general syntax
-- SELECT column_name FROM table_name
-- Example
-- selecting multiple column  
-- SELECT first_name,last_name FROM actor;

-- selecting specific row
-- SELECT * FROM actor WHERE actor_id=2;
-- SELECT * FROM payment WHERE amount=0.99;
-- SELECT * FROM payment WHERE customer_id=1;
-- SELECT * FROM payment WHERE amount=0.99 AND staff_id=2;
-- SELECT distinct(customer_id), amount FROM payment WHERE amount=0.99;
-- SELECT count(distinct(customer_id)) AS "Total customer", amount FROM payment WHERE amount=0.99;
-- SELECT customer_id AS "customer", amount FROM payment WHERE amount=0.99;
-- SELECT customer_id AS "customer", amount FROM payment WHERE amount<4.99;
-- SELECT distinct(customer_id) AS "customer", amount FROM payment WHERE amount<=4.99;
-- SELECT distinct(customer_id) AS "customer", amount FROM payment WHERE amount>=4.99;

-- CLASS 4
-- TODAY FILTER WITH LOGICAL OPERATOR
-- USE sakila
-- SELECT customer_id AS "Customer", amount FROM payment WHERE amount>=4.99 AND amount<=6.99;
-- SELECT customer_id AS "customer", amount FROM payment WHERE amount>=4.99 AND amount<=6.99 ORDER BY customer_id ASC;
-- SELECT customer_id AS "customer", amount, rental_id FROM payment WHERE amount>=4.99 AND amount<=6.99 ORDER BY rental_id ASC;
-- SELECT customer_id AS "customer", amount FROM payment WHERE amount>=4.99 AND amount<=6.99 ORDER BY amount DESC;
-- SELECT amount,rental_id FROM payment WHERE amount>=4.99 AND amount<=6.99 ORDER BY amount, rental_id ASC;
-- SELECT customer_id AS "customer", amount FROM payment WHERE amount>=4.99 AND amount<=6.99 ORDER BY amount, rental_id ASC;
-- SELECT * FROM customer ORDER BY first_name ASC;
-- SELECT * FROM customer ORDER BY first_name, last_name ASC;
-- SELECT * FROM customer ORDER BY first_name ASC, email DESC;
-- SELECT concat(first_name, " ", last_name) AS "Fullname", email, address_id FROM customer;
-- SELECT * FROM film WHERE rental_rate=4.99 AND rating="PG";
-- SELECT * FROM film WHERE rental_rate=4.99 OR rating="PG";
-- SELECT * FROM film WHERE rental_rate=4.99 AND rating="PG" OR release_year=2006;
-- SELECT * FROM film WHERE NOT rating="PG";
-- SELECT * FROM film WHERE NOT rating="PG" AND NOT rating="PG-13";

-- FILTER WITH LIKE AND A WILDCARD
-- SELECT * FROM film WHERE NOT rating LIKE "PG";
-- SELECT * FROM film WHERE title LIKE "A%";
-- SELECT * FROM film WHERE title LIKE "%A";
-- SELECT * FROM film WHERE title LIKE "%A%";
-- SELECT * FROM film WHERE title LIKE "A%A";
-- SELECT * FROM customer WHERE first_name LIKE "_A_Y";
-- SELECT * FROM customer WHERE first_name LIKE "A_Y";
-- SELECT * FROM film WHERE rental_rate LIKE 4.99 AND rating LIKE "PG";
-- SELECT * FROM film WHERE title LIKE "A%N";

-- APRIL 7 2025
-- FILTERING BETWEEN OPERATOR
-- THE between operator compares each column with a range of values
-- use sakila
-- SELECT customer_id, amount FROM payment WHERE amount BETWEEN 2.99 AND 6.99 ORDER BY customer_id DESC;
-- SELECT * FROM customer WHERE create_date BETWEEN '2006-02-14' AND '2006-02-15' ORDER BY first_name ASC;
-- SELECT * FROM customer WHERE address_id BETWEEN 100 AND 200 OR customer_id<300 ORDERfirst_name; BY 
-- SELECT * FROM customer WHERE address_id BETWEEN 100 AND 200 AND customer_id<300 ORDER BY first_name;

-- filter with IN, NOT IN and BETWEEN operators
-- the IN operator compares each column values with a list of values
-- use sakila
-- SELECT * FROM film,
-- SELECT * FROM film WHERE rating IN("PG", "G", "PG-13");
-- SELECT * FROM film WHERE rental_duration IN('3', '4');

-- the NOT IN operator filters out values of a column not in a list
-- SELECT * FROM film WHERE rating NOT IN("PG", "G", "PG-13"); 
-- SELECT title, description, rental_rate, length, rating FROM film WHERE length BETWEEN 50 AND 100; 
-- SELECT title, description, rental_rate, length, rating FROM film WHERE length BETWEEN 50 AND 100 AND rating IN("PG", "G", "PG-13")

-- filter with NULL, NOT NULL and LIMIT
-- is NULL operator alloww to select all rows of a column that contain
-- SELECT * FROM film WHERE rental_rate is NULL;
-- is NOT OPERATOR
-- SELECT * FROM film WHERE renta_rate is NOT NULL;
-- SELECT * FROM payment LIMIT 10;
-- SELECT * FROM payment ORDER BY amount LIMIT 10;
-- SELECT * FROM payment ORDER BY amount DESC LIMIT 10;

-- Arithmetic EXpression
-- Arithmetic operation are +, -, *, /, (precedence)
-- SELECT * FROM payment;
-- SELECT amount*2 FROM payment;
-- SELECT amount*2 AS "Amount-squared" FROM payment;
-- SELECT amount/2 FROM payment;
-- SELECT rental_id/amount, payment_id, amount FROM payment WHERE  amount=2.99 ORDER BY payment_id*2 DESC;
-- SELECT amount, rental_id, payment_id FROM payment WHERE  amount/2.99>2 ORDER BY payment_id DESC;

-- filter with Aggregate/statistical functions
-- SELECT * FROM payment;
-- count(): it count all rows, counts all not null rows, count all unique rows
-- SELECT COUNT(distinct(staff_id)) FROM payment;
-- SELECT min(amount) AS "Lowest amount" FROM payment;
-- SELECT max(amount) AS "Highest amount" FROM payment;
-- SELECT max(amount) AS "Highest amount", min(amount) AS "Lowest amount", avg(amount) AS "Average amount" FROM payment;
-- SELECT sum(amount) AS "Total amount", staff_id FROM payment GROUP BY staff_id;

-- GROUP BY
--  SELECT sum(amount) AS "Total amount", staff_id FROM payment GROUP BY staff_id;
-- SELECT customer_id, avg(amount) AS "Average amount" FROM payment GROUP BY customer_id;
-- SELECT customer_id, avg(amount) AS "Average amount" FROM payment GROUP BY staff_id;
-- SELECT customer_id,payment_id, avg(amount) AS "Average amount" FROM payment GROUP BY customer_id, payment_id;
--  SELECT * FROM customer;
-- SELECT store_id, COUNT(customer_id) FROM customer GROUP BY store_id ORDER BY store_id DESC;

-- HAVING CLAUSE
-- USE sakila
-- SELECT * FROM film
-- SELECT * FROM film WHERE rating IN('PG', 'G', 'PG-13')
-- SELECT sum(replacement_cost) AS "Total_replacement_cost", rating FROM film WHERE rating IN ('PG', 'G', 'PG-13') GROUP BY rating
-- SELECT sum(replacement_cost) AS "Total_replacement_cost", rating FROM film WHERE rating IN ('PG', 'G', 'PG-13') GROUP BY rating HAVING sum(replacement_cost) <4000;
-- SELECT * FROM customer
-- SELECT COUNT(customer_id) AS 'customer in storeID greater than 8', store_id FROM customer WHERE address_id>8 GROUP BY store_id;
-- SELECT COUNT(customer_id) AS 'customer in storeID greater than 8', store_id FROM customer WHERE address_id>8 GROUP BY store_id HAVING  COUNT(customer_id)>300;

-- SQL CASE EXPRESSION
-- CASE
-- 		WHEN conditon1 THEN RESULT1
--         WHEN conditon2 THEN RESULT2
--         WHEN conditon3 THEN RESULT3
--         
-- END;
-- SELECT * FROM film   
-- SELECT film_id, title, replacement_cost,
-- CASE
--     WHEN replacement_cost > 15 THEN 'fragile film'
--     WHEN replacement_cost BETWEEN 10 AND 15 THEN 'critical film'
--     ELSE 'ORDINARY FILM ' END
--     AS 'replacement category'
-- FROM film; 

-- SELECT * FROM payment;
-- SELECT * ,
-- CASE
--     WHEN amount >6.99 THEN "expressive film" 
--     WHEN amount BETWEEN 4.99 AND 6.99 THEN 'average price'
--     ELSE 'cheap price' END
--     AS 'film price category'
-- FROM payment;  

-- SELECT film_id, title, description, (replacement_cost), rating,
-- CASE
--     WHEN rating = 'PG' THEN 'Parental Guide'
--     WHEN rating = 'G' THEN 'Guidance'
--     WHEN rating = 'PG-13' THEN 'Parental Guide under 13'
--     ELSE 'No guardance needed'
-- END AS 'No guardance needed'
-- from film

-- SELECT * FROM address ORDER BY
--   (CASE
--   WHEN district is NULL THEN postal_code
--   ELSE district
--   END) DESC;
-- use sakila
-- SELECT * FROM payment
-- SELECT payment.payment_id, payment.amount,payment.customer_id, rental.rental_date 
-- FROM payment 
-- INNER JOIN rental 
-- ON payment.rental_id=rental.rental_id;

-- INNER JOIN
SELECT payment.customer_id, payment.rental_id,payment.customer_id, rental.rental_date 
FROM customer
INNER JOIN payment 
ON customer.customr_id=payment.customer_id;
    