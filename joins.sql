-- INNER JOIN       *table order does not matter

SELECT payment_id,payment.customer_id,first_name 
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

-- can switch table order 

SELECT payment_id,payment.customer_id,first_name 
FROM customer
INNER JOIN payment
ON payment.customer_id = customer.customer_id;


--OUTER JOIN

--1  FULL OUTER JOIN
--2  LEFT OUTER JOIN
--3  RIGHT OUTER JOIN


--FULL OUTER JOIN           *table order does not matter

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id;

-- can switch table order

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id;


SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null
OR payment.payment_id IS null;


--LEFT JOIN                 *table order matters

SELECT * FROM film;
SElECT * FROM inventory;

SELECT film.film_id, title, inventory_id,store_id 
FROM film
LEFT JOIN inventory 
ON inventory.film_id = film.film_id;

SELECT film.film_id, title, inventory_id,store_id 
FROM film
LEFT JOIN inventory 
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS null;

-- RIGHT JOIN                 *table order matters

SELECT film.film_id, title, inventory_id, store_id
FROM film
RIGHT JOIN inventory
ON inventory.film_id   = film.film_id;

SELECT film.film_id, title, inventory_id, store_id
FROM film
RIGHT JOIN inventory
ON inventory.film_id   = film.film_id
WHERE film.film_id IS null;


--UNIONS

-- unions will be explained later with other table data


