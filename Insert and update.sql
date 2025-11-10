-- INSERT

SELECT * FROM account;

INSERT INTO account(username,password,email,created_on)
VALUES('Jose','password','jose@gmail.com',CURRENT_TIMESTAMP);      

SELECT * FROM account;

SELECT * FROM job;

INSERT INTO job(job_name)
VALUES('software');

SELECT * FROM job;

SELECT * FROM account_job;

INSERT INTO account_job(user_id,job_id,hire_date)
VALUES(1,1,CURRENT_TIMESTAMP);

SELECT * FROM account_job;

INSERT INTO account_job(user_id,job_id,hire_date)
VALUES(10,10,CURRENT_TIMESTAMP);                 -- gives error



-- UPDATE

SELECT * FROM account;

UPDATE account
SET last_login = CURRENT_TIMESTAMP;

UPDATE account
SET last_login = created_on;


SELECT * FROM account_job;

UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id

SELECT * FROM account_job;

UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email,created_on,last_login;


