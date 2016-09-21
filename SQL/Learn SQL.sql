/* MySQL isn't actually case sensitive, this is just a convention */

/* LAST TYPE WHEN CREATING TABLE SHOULDN'T ACTUALLY HAVE A COMMA! */

CREATE TABLE student
(
	-> first_name	VARCHAR(30) NOT NULL,
	-> last_name	VARCHAR(30) NOT NULL,
	-> email		VARCHAR(60) NULL,
	-> street		VARCHAR(50) NOT NULL,
	-> city			VARCHAR(40) NOT NULL,
	-> state		CHAR(2) NOT NULL DEFAULT "PA",
	-> zip			MEDIUMINT UNSIGNED NOT NULL,
	-> phone		VARCHAR(20) NOT NULL,
	-> birth_date	DATE NOT NULL,
	-> sex			ENUM('M', 'F')
	-> date_entered	TIMESTAMP,
	-> lunch_cost	FLOAT NULL,
	-> student_id	INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
);

DESCRIBE student;

INSERT INTO student VALUE
	-> ('Dale', 'Cooper', 'dcooper@aol.com', '123 Main St', 'Yakima', 'WA', 98901, '792-223-8901', etc, etc, etc, NULL);

SELECT * FROM student;

CREATE TABLE class
(
	-> name			VARCHAR(30) NOT NULL,
	-> class_id		INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
);

SHOW TABLES;

INSERT INTO class VALUES
	-> ('English', NULL), ('Speech', NULL), 'Literature', NULL), etc, etc;

SELECT * FROM class;

CREATE TABLE test
(
	-> date 		DATE NOT NULL,
	-> type			ENUM('T', 'Q') NOT NULL,
	-> class_id		INT UNSIGNED NOT NULL,
	-> test_id		INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
);

/* Foreign Key: Used to make references to the Primary Key of another table */

CREATE TABLE score
(
	-> student_id	INT UNSIGNED NOT NULL,
	-> event_id		INT UNSIGNED NOT NULL,
	-> score		INT NOT NULL,
	-> PRIMARY KEY(event_id, student_id)
);

/* Primary Key above: Guarantee there is no duplication in terms of scores */

CREATE TABLE absence
(
	-> student_id	INT UNSIGNED NOT NULL,
	-> date			DATE NOT NULL,
	-> PRIMARY KEY(student_id, date)
);

DESCRIBE test;

SHOW tables;

ALTER TABLE test
	-> ADD maxscore INT NOT NULL AFTER type;

INSERT INTO test VALUES
	-> ('2014-8-25', 'Q', 15, 1, NULL),
	-> etc,
	-> etc;

ALTER TABLE score CHANGE event_id test_id
	-> INT UNSIGNED NOT NULL;

SELECT first_name, last_name
	-> FROM student;

RENAME TABLE
	-> absence	to absences,
	-> class	to classes,
	-> test		to tests,
	-> etc;

SELECT first_name, last_name, state
	-> FROM students
	-> WHERE state="WA";

SELECT first_name, last_name, birth_date
	-> FROM students
	-> WHERE YEAR(birth_date) >= 1965;

SELECT first_name, last_name, birth_date
	-> FROM students
	-> WHERE MONTH(birth_date) = 2 OR state = "CA";

/* OR, AND, NOT */

SELECT last_name, state, birth_date
	-> FROM students,
	-> WHERE DAY(birth_date) >= 12 && (state = "CA" || state = "NV");

SELECT last_name
	-> FROM students
	-> WHERE last_name IS NULL # or IS NOT NULL

SELECT first_name, last_name
	-> FROM students
	-> ORDER BY last_name;

SELECT first_name, last_name, state
	-> FROM stuidents,
	-> ORDER BY state DESC, last_name ASC # Descending, Ascending

SELECT first_name, last_name
	-> FROM students
	-> LIMIT 5; # Results 0 to 5

SELECT first_name, last_name
	-> FROM students,
	-> LIMIT 5, 10; # Results 5 to 10

SELECT CONCAT(first_name, " ", last_name) AS 'Name',
	-> CONCAT(city, " ", state) AS 'Hometown'
	-> FROM students;

SELECT last_name, first_name
	-> FROM students
	-> WHERE first_name LIKE 'D%' OR last_name LIKE '%n'; # First name starts with 'D' or Last Name ends with 'n'

SELECT last_name, first_name
	-> FROM students
	-> WHERE first_name LIKE '___y'; # Four letter name that ends in 'y'

SELECT DISTINCT state # List all states once
	-> FROM students
	-> ORDER BY state;

SELECT COUNT(DISTINCT state) # How many distinct states are there?
	-> FROM students;

SELECT COUNT(*) # Num of students
	-> FROM students;

SELECT COUNT(*) # How many male students
	-> FROM students
	-> WHERE sex = 'M';

SELECT sex, COUNT(*)
	-> FROM students
	-> GROUP BY sex;

SELECT MONTH(birth_date) AS 'Month', COUNT(*)
	-> FROM students
	-> GROUP BY Month
	-> ORDER BY Month;

SELECT state, COUNT(state) AS 'Amount'
	-> FROM students,
	-> GROUP BY state,
	-> HAVING Amount > 1;

# WHERE is a condition on a row, HAVING is a condition on an aggregation

SELECT
	-> test_ID AS 'Test',
	-> MIN(score) AS min,
	-> MAX(score) AS max,
	-> MAX(score) - MIN(score) AS 'range',
	-> SUM(score) AS total,
	-> AVG(score) AS average
	-> FROM scores
	-> GROUP BY test_id;

SELECT * FROM absences;

SELECT student_id, test_id # See which test student 6 missed
	-> FROM scores
	-> WHERE student_id = 6;

INSERT INTO scores VALUES (6, 3, 24); # He took the test, now input the data

DELETE FROM absences # Remove his absence
	-> WHERE student_id = 6;

/* Otherwise, let's add a boolean marker that keeps track of if the absence was made-up */

ALTER TABLE absences
	-> ADD COLUMN test_taken CHAR(1) NOT NULL DEFAULT 'F'
	-> AFTER student_id;

/* Except that this should really be an enum! */

ALTER TABLE absences
	-> MODIFY COLUMN test_taken ENUM('T', 'F') NOT NULL DEFAULT 'F';

/* Decided to remove test_taken completely */

ALTER TABLE absences
	-> DROP COLUMN test_taken;

SELECT * FROM scores
	-> WHERE student_id = 4;

/* Update a score */

UPDATE scores SET score = 25
	-> WHERE student_id = 4 AND test_id = 3;

SELECT first_name, last_name, birth_date
	-> FROM students
	-> WHERE birth_date
	-> BETWEEN '1960-1-1' AND '1970-1-1';

SELECT first_name, last_name
	-> FROM students
	-> WHERE first_name IN ('Bobby', 'Lucy', 'Andy');

/* Note test and score have test_id in common */
SELECT student_id, date, score, maxscore
	-> FROM tests, scores
	-> WHERE date = '2014-08-25'
	-> AND test.test_id = scores.test_id;

SELECT scores.student_id, tests.date, scores.score,
	-> tests.maxscore
	-> FROM tests, scores
	-> WHERE date='2014-08-25'
	-> AND tests.test_id = scores.test_id;

SELECT CONCAT(students.first_name, " ", students.last_name) AS Name,
	-> tests.date, scores.score, tests.maxscore
	-> FROM tests, scores, students
	-> WHERE date = '2014-08-25'
	-> AND tests.test_id = scores.test_id
	-> AND scores.student_id = students.student_id;
