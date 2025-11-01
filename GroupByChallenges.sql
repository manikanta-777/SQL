--Group By challenges
SELECT * FROM payment;
SELECT * FROM film;
SELECT * FROM customer;

-- challenge 1
SELECT staff_id,COUNT(amount) FROM payment
GROUP BY staff_id;                           --2 gets bonus

-- challenge 2
SELECT rating, ROUND(AVG(replacement_cost),2) FROM film
GROUP BY rating;

--challenge 3
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;
