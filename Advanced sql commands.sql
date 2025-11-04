-- ADVANCED SQL COMMANDS

-- Timestamps and Extract

SHOW ALL;
SHOW TIMEZONE;

SELECT NOW();

SELECT TIMEOFDAY();

SELECT CURRENT_DATE;

SELECT * FROM payment;

SELECT EXTRACT(YEAR FROM payment_date) AS year FROM payment;
SELECT EXTRACT(MONTH FROM payment_date) AS pay_month FROM payment;
SELECT EXTRACT(QUARTER FROM payment_date) AS quarter FROM payment;

SELECT payment_date FROM payment;
SELECT AGE(payment_date) FROM payment;
SELECT TO_CHAR(payment_date,'DD-MM-YYYY') FROM payment;
SELECT TO_CHAR(payment_date,'MONTH-YYYY') FROM payment;
SELECT TO_CHAR(payment_date,'MONTH     YYYY') FROM payment;
SELECT TO_CHAR(payment_date,'mon/dd/YYYY') FROM payment;
SELECT TO_CHAR(payment_date,'DD/MM/YYYY') FROM payment;

-- to_char notes
-- https://www.postgresql.org/docs/12/functions-formatting.html

-- Challenges

-- challenge 1

SELECT 
DISTINCT(TO_CHAR(payment_date, 'DAY')) 
FROM payment;

-- challenge 2

-- 1st way
SELECT 
COUNT(TO_CHAR(payment_date, 'DAY')) as no_of_mondays
FROM payment
WHERE TRIM(TO_CHAR(payment_date, 'DAY')) = 'MONDAY';

--2nd way
SELECT COUNT(EXTRACT(dow FROM payment_date)) FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;


--Mathematical Functions and Operations

SELECT * FROM film;

SELECT ROUND(rental_rate/replacement_cost,2)*100 AS percentage_cost FROM film;

SELECT CONCAT(ROUND(rental_rate/replacement_cost,2)*100,'%') AS percentage_cost FROM film;

SELECT 0.1*replacement_cost AS deposit FROM film;


-- String Functions and Operators

SELECT * FROM customer;

SELECT LENGTH(first_name) FROM customer;
SELECT first_name || last_name FROM customer;
SELECT first_name || ' ' || last_name AS full_name FROM customer;
SELECT upper(first_name) || ' ' || upper(last_name) AS full_name FROM customer;

--create custome email

SELECT first_name || last_name || '@gmail.com' FROM customer;
SELECT lower(first_name) || '.' || lower(last_name) || '@gmail.com' AS custome_email FROM customer;

--use only first letter from first_name

SELECT lower(LEFT(first_name,1)) || '.' || lower(last_name) || '@gmail.com' AS custome_email FROM customer;

-- subQuery
SELECT * FROM film;

SELECT AVG(rental_rate) FROM film;


SELECT title, rental_rate FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);

SELECT * FROM rental;
SELECT * FROM inventory;
SELECT * FROM film;

--Getting title of films when return rate in between '2005-05-29' and '2005-05-30'

-- IN Operator

SELECT title, film_id FROM film 
WHERE film_id IN 
(SELECT film_id FROM rental
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY film_id;

-- EXISTS Operator

SELECT * FROM customer;

SELECT first_name, last_name
FROM customer AS c
WHERE EXISTS
(SELECT * FROM payment AS p
WHERE p.customer_id = c.customer_id
AND amount > 11);

--NOT EXISTS

SELECT first_name, last_name
FROM customer AS c
WHERE NOT EXISTS
(SELECT * FROM payment AS p
WHERE p.customer_id = c.customer_id
AND amount > 11);

-- SELF JOIN

SELECT * FROM film
WHERE length > 117;

SELECT title,length FROM film
WHERE length > 117;

SELECT f1.title,f2.title, f1.length 
FROM film AS f1
INNER JOIN film AS f2 ON
f1.film_id = f2.film_id
AND f1.length = f2.length;

SELECT f1.title,f2.title, f1.length 
FROM film AS f1
INNER JOIN film AS f2 ON
f1.film_id != f2.film_id
AND f1.length = f2.length;




















