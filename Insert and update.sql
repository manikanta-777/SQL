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