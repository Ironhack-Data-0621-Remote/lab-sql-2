USE sakila;
-- 1. Select all the actors with the first name ‘Scarlett’.
SELECT * FROM actor
WHERE first_name = 'Scarlett';

-- 2. Select all the actors with the last name ‘Johansson’.
SELECT * FROM actor
WHERE last_name = 'Johansson';

-- 3. How many films (movies) are available for rent? (Total amount of movies)
SELECT count(film_id) FROM inventory;

-- 4. How many films have been rented?
SELECT count(rental_id) FROM rental;

-- 5. What is the shortest and longest rental period?
SELECT min(rental_duration) AS shortest, max(rental_duration) AS longest FROM film;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT min(length) AS min_duration, max(length) AS max_duration FROM film;

-- 7. What's the average movie duration?
SELECT avg(length) AS average FROM film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
SELECT concat(floor((AVG(length))/60),'h',round((AVG(length))%60),'m') AS average_duration
FROM film;

-- 9. How many movies longer than 3 hours?
SELECT count(film_id) FROM film
WHERE length > 180;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT concat(LEFT(first_name,1), substr(lower(first_name), 2, 30),' ', last_name, ' - ', lower(email)) AS formatted
FROM customer;

-- 11. What's the length of the longest film title?
SELECT MAX(LENGTH(title)) FROM film;