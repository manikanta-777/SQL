-- CASE

SELECT customer_id,
CASE 
	WHEN (customer_id <= 100) THEN 'Primium'
	WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
	ELSE 'Normal'
END  AS customer_class
FROM customer;


SELECT customer_id,
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 Then 'Second Place'
	ELSE 'Normal'
END As raffle_results
FROM customer;

SELECT rental_rate,
CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END AS bargains
from film;

SELECT
SUM (CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END) AS no_of_bargains,
SUM (CASE rental_rate
	WHEN 2.99 THEN 1
	ELSE 0
END) AS regular,
SUM (CASE rental_rate
	WHEN 4.99 THEN 1
	ELSE 0
END) AS premium
from film;

SELECT * FROM payment;

SELECT * FROM film;


-- CASE challenge

SELECT 
SUM (CASE rating
	WHEN 'R' THEN 1
	ELSE 0
END) AS r,
SUM (CASE rating
	WHEN 'PG' THEN 1
	ELSE 0
END) AS pg13,
SUM (CASE rating
	WHEN 'PG-13' THEN 1
	ELSE 0
END) AS pg13
from film;

-- COALESCE

---CAST

SELECT CAST('5' AS INTEGER);
SELECT CAST('5' AS INTEGER) AS new_int;
SELECT CAST('five' AS INTEGER); -- gives error

SELECT '5'::INTEGER;
SELECT '5'::INTEGER AS new_int;

SELECT * FROM rental;

SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental;


