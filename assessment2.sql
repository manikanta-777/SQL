CREATE TABLE students (
    student_id VARCHAR(20) PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_number VARCHAR(20) NOT NULL,
	phone VARCHAR(20) UNIQUE NOT NULL,
	graduation_year YEAR
);

SELECT * FROM students;


CREATE TABLE teachers (
	teacher_id VARCHAR(20) PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_number NUMBER NOT NULL,
	department VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE,
	phone VARCHAR(20) UNIQUE NOT NULL
);

SELECT * FROM teachers;


INSERT INTO students(student_id,first_name,last_name,homeroom_number,phone, graduation_year)
VALUES('1','Mark','Watney',5,'777-555-1234',2035);

ALTER TABLE students
DROP COLUMN graduation_year;

ALTER TABLE students
ADD COLUMN graduation_year INTEGER NOT NULL;


INSERT INTO teachers(teacher_id,first_name,last_name,homeroom_number,department,email,phone)
VALUES('1','Jonas','Salk',5,'Biology','jsalk@school.org','777-555-4321');
