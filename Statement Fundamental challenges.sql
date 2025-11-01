--challenge 1
SELECT * FROM payment
WHERE amount>5;

SELECT COUNT(amount) FROM payment
WHERE amount > 5;

--challenge 2
SELECT * FROM actor;

SELECT * FROM actor
WHERE first_name LIKE 'P%';


SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

--challenge 3
SELECT COUNT(DISTINCT(district)) FROM address;

--challenge 4
SELECT DISTINCT(district) FROM address;

--challenge 5
SELECT * FROM film
WHERE rating ='R' 
AND replacement_cost BETWEEN 5 AND 15;

SELECT COUNT(*) FROM film
WHERE rating ='R' 
AND replacement_cost BETWEEN 5 AND 15;

-- challenge 6
SELECT title FROM film
WHERE title LIKE '%Truman%';

SELECT COUNT(title) FROM film
WHERE title LIKE '%Truman%';





