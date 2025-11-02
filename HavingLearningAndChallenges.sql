-- HAVING
SELECT * FROM payment;

SELECT customer_id,SUM(amount) FROM payment
-- WHERE customer_id NOT IN (184,87,477)
GROUP BY customer_id
HAVING SUM(amount) > 100;


SELECT * FROM customer;

SELECT store_id, COUNT(customer_id) FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300;

-- HAVING CHALLENGES

-- Challenge 1
SELECT * FROM payment;

SELECT customer_id,COUNT(payment_id) FROM payment
GROUP BY customer_id
HAVING COUNT(payment_id) >= 40;

-- or

SELECT customer_id,COUNT(*) FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 40;


-- Challenge 2

SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100;






