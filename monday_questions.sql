-- 1.
SELECT COUNT(last_name) AS hey_how_are_ya_say_hi_to_ya_motha_for_me_Im_Mark_Wahlberg
FROM actor
WHERE last_name = 'Wahlberg';

-- 2.
select COUNT(amount) from payment where amount between 3.99 and 5.99;

-- 3.
SELECT film_id, COUNT(store_id) AS stock
FROM inventory
GROUP BY film_id
ORDER BY stock DESC;

-- 4.
SELECT COUNT(last_name) AS first_name_as_a_last_name
FROM customer
WHERE last_name = 'William';

-- 5.
SELECT staff_id, COUNT(rental_id) AS rental_occurences
FROM rental
GROUP BY staff_id
ORDER BY rental_occurences DESC;

-- 6.
SELECT COUNT(DISTINCT district) AS unique_districts
FROM address;

-- 7.
SELECT film_id, COUNT(actor_id) AS the_most_actors
FROM film_actor
GROUP BY film_id
ORDER BY the_most_actors DESC;

-- 8.
SELECT COUNT(last_name) AS total_customers
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

-- 9.
SELECT amount, COUNT(rental_id) AS total_rentals
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(rental_id) > 250;

-- 10.
SELECT rating AS Motion_Picture_Association_Ratings,
    COUNT(film_id) AS total_movies
FROM film
GROUP BY rating
ORDER BY total_movies DESC;