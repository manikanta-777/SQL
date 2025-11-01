-- SELECT
SELECT * from actor;
SELECT first_name,last_name FROM actor;
SELECT * FROM city;

SELECT * FROM customer;
SELECT first_name,last_name,email from customer;

-- DISTINCT
SELECT * FROM film;
SELECT DISTINCT release_year FROM film;
SELECT DISTINCT(release_year) FROM film;
SELECT DISTINCT(rental_rate) FROM film;
SELECT DISTINCT(rating) FROM film;
SELECT DISTINCT amount FROM payment;


-- COUNT
SELECT COUNT(*) from film;
SELECT COUNT(first_name) FROM actor;
SELECT COUNT(*) FROM payment;
SELECT COUNT(amount) FROM payment;

--COUNT+DISTINCT
SELECT COUNT(DISTINCT first_name) FROM actor;
SELECT COUNT( DISTINCT amount) FROM payment;

-- WHERE
SELECT * FROM customer
WHERE first_name = 'Jared';
SELECT * FROM film
WHERE rental_rate > 4;

-- WHERE+ operators
SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 22.0
AND rating = 'R';

SELECT COUNT(*) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 22.0
AND rating != 'R';


SELECT email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

SELECT description FROM film
WHERE title = 'Outlaw Hanky';

SELECT phone FROM address
WHERE address = '259 Ipoh Drive';


-- ORDER BY
SELECT store_id, first_name, last_name FROM customer
ORDER BY store_id;
SELECT store_id, first_name, last_name FROM customer
ORDER BY store_id, first_name;
SELECT store_id, first_name, last_name FROM customer
ORDER BY store_id DESC, first_name ASC;

-- LIMIT
SELECT * FROM payment
ORDER BY payment_date DESC
LIMIT 5;

SELECT * FROM payment
WHERE amount != 0.00
ORDER BY payment_date DESC
LIMIT 5;

SELECT customer_id FROM payment
ORDER BY payment_date
LIMIT 10;

SELECT title,length FROM film
ORDER BY length
LIMIT 5;

SELECT COUNT(title) FROM film
WHERE length <= 50;

-- BETWEEN
SELECT * FROM payment;
SELECT COUNT(*) FROM payment
WHERE amount BETWEEN 8 AND 9;


SELECT * FROM payment;
SELECT COUNT(*) FROM payment
WHERE amount NOT BETWEEN 8 AND 9;

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';

-- IN
SELECT * FROM payment
ORDER By amount;

SELECT DISTINCT(amount) FROM payment
ORDER By amount;

SELECT * FROM payment
WHERE amount IN (0.99,1.98,1.99);

SELECT COUNT(*) FROM payment
WHERE amount IN (0.99,1.98,1.99);

SELECT COUNT(*) FROM payment
WHERE amount NOT IN (0.99,1.98,1.99);

SELECT * FROM customer
WHERE first_name IN ('John','Jake','Julie');

SELECT * FROM customer
WHERE first_name NOT IN ('John','Jake','Julie');

-- LIKE - ILIKE
SELECT * FROM customer
WHERE first_name LIKE 'J%';

SELECT COUNT(*) FROM customer
WHERE first_name LIKE 'J%';

SELECT * FROM customer
WHERE first_name LIKE 'J%' and last_name LIKE 'S%';

SELECT * FROM customer
WHERE first_name LIKE 'j%' and last_name LIKE 's%';

SELECT * FROM customer
WHERE first_name ILIKE 'j%' and last_name ILIKE 's%';

SELECT * FROM customer
WHERE first_name LIKE '%er';

SELECT * FROM customer
WHERE first_name LIKE '_her%';

SELECT * FROM customer
WHERE first_name NOT LIKE '_her%';

SELECT * FROM customer
WHERE first_name LIKE 'A%'
ORDER BY last_name;

SELECT * FROM customer
WHERE first_name LIKE 'A%' AND last_name NOT LIKE 'B%'
ORDER BY last_name;







