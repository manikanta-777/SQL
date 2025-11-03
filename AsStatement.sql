-- AS statement

SELECT COUNT(*) AS num_transactions FROM payment;

SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

SELECT customer_id, amount as money
FROM payment
WHERE amount > 2
