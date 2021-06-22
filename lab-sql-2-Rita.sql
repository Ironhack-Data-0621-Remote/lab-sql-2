

use sakila;

-- Select all the actors with the first name ‘Scarlett’

SELECT actor_id, first_name
FROM actor
WHERE first_name = 'Scarlett';

-- Select all the actors with the last name ‘Johansson’

SELECT actor_id, last_name
FROM actor
WHERE last_name = 'Johansson';

-- How many films (movies) are available for rent?
SELECT count(film_id) as films_for_rent
FROM film;

-- How many films have been rented?
SELECT count(rental_id) as films_rented
FROM rental;


-- What is the shortest and longest rental period?

SELECT min(DATEDIFF(return_date, rental_date)) AS shortest_rental, max(DATEDIFF(return_date, rental_date)) AS longest_rental
FROM rental;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration

SELECT min(film.length) AS min_duration, max(film.length) AS max_duration
FROM film;

-- What's the average movie duration?

SELECT avg(film.length) AS avg_duration
FROM film;

-- What's the average movie duration expressed in format (hours, minutes)

SELECT sec_to_time(round(avg(film.length)*60)) AS avg_duration
FROM film;


-- How many movies longer than 3 hours?

SELECT count(sec_to_time(round(film.length)*60)) as long_movies
FROM film
WHERE sec_to_time(round(film.length)*60) > "03:00:00";


-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.

SELECT (concat(lower(first_name), ' ', last_name, ' ', '-', ' ', lower(email))) as email_formatted
FROM customer;

-- What's the length of the longest film title?

SELECT max(length(title))
FROM film;

