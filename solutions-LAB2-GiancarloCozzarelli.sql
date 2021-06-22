use sakila;
-- 1. Select all the actors with the first name ‘Scarlett’.
SELECT *
FROM sakila.actor
WHERE first_name = 'Scarlett';

-- 2. Select all the actors with the last name ‘Johansson’.
SELECT *
FROM sakila.actor
WHERE last_name = 'Johansson';

-- 3. How many films (movies) are available for rent? (Total amount of movies)
SELECT COUNT(film_id)
FROM film;

-- 4. How many films have been rented?
SELECT COUNT(distinct film_id)
FROM film
WHERE rental_duration is not null or rental_duration <> '';

-- 5. What is the shortest and longest rental period?
SELECT min(rental_duration) as shortest_rental,max(rental_duration) as longest_rental
FROM film;
-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT min(length ) as shortest_movie,max(length) as longest_movie
FROM film;
-- 7. What's the average movie duration?
SELECT avg(length )
FROM film;
-- 8. What's the average movie duration expressed in format (hours, minutes)?
SELECT cast(avg(length) as time)
FROM film;

-- 9. How many movies longer than 3 hours?
SELECT Count(distinct film_id)
FROM film
WHERE length > 180;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT concat(LOWER(first_name),' ',UPPER(last_name),' - ',lower(email))
FROM customer;
-- 11. What's the length of the longest film title?
SELECT max(length(title))
from film;