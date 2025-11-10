SELECT * FROM job;

INSERT INTO job(job_name)
VALUES('Lawyer'),
('President');

--DELETE

DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id,job_name;

--ALTER
CREATE TABLE information(
info_id SERIAL PRIMARY KEY,
title VARCHAR(500) NOT NULL,
person VARCHAR(500) NOT NULL UNIQUE
);

SELECT * FROM information;

--Rename table name
ALTER TABLE information     
RENAME TO new_info;             

SELECT * FROM new_info;

-- SELECT * FROM information;   

--Rename table column name
ALTER TABLE new_info
RENAME COLUMN person to people;

SELECT * FROM new_info;


INSERT INTO new_info(title)
VALUES('some new title');

-- ERROR:  null value in column "people" of relation "new_info" violates not-null constraint
-- Failing row contains (1, some new title, null). 

--Removing or Setting constraints
ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL;    -- removing

INSERT INTO new_info(title)
VALUES('some new title');

SELECT * FROM new_info;

UPDATE new_info
SET people  = 'mani'
WHERE title = 'some new title';       

ALTER TABLE new_info
ALTER COLUMN people SET NOT NULL;    -- setting
 
SELECT * FROM new_info;


--DROP
ALTER TABLE new_info
DROP COLUMN people;

SELECT * FROM new_info;

ALTER TABLE new_info
DROP COLUMN IF EXISTS people;

--CHECK

CREATE TABLE employees(
emp_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
birth_date DATE CHECK (birth_date > '1900-01-01'),
hire_date DATE CHECK (hire_date > birth_date),
salary INTEGER CHECK (salary > 0)
);

SELECT * FROM employees;

INSERT INTO employees(
	first_name,
	last_name,
	birth_date,
	hire_date,
	salary
	)
	VALUES(
      'mani',
	  'ch',
	  '1899-10-10',
	  '2021-10-26',
	  100
	)



