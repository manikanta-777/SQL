-- JOINS challenges

-- challenge 1 
SELECT * FROM customer;
SELECT * FROM address;

SELECT email,address.address_id, district from customer
JOIN address
ON address.address_id = customer.address_id
WHERE address.district = 'California';

SELECT email, district from customer
JOIN address
ON address.address_id = customer.address_id
WHERE address.district = 'California';

--challenge 2
SELECT * FROM actor
WHERE first_name = 'Nick' AND last_name = 'Wahlberg';

SELECT * FROM film
WHERE actor_id = 2;

SELECT film_actor.actor_id, first_name, last_name, film_actor.film_id, film.title from actor
LEFT JOIN film_actor
ON film_actor.actor_id = actor.actor_id
LEFT JOIN film
ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg'



