USE sakila;

-- Select all the actors with the first name ‘Scarlett’.
SELECT *
FROM actor
WHERE first_name = 'Scarlett';

-- Select all the actors with the last name ‘Johansson’.
SELECT *
FROM actor
WHERE last_name = 'Johansson';

-- How many films (movies) are available for rent?
SELECT count(inventory_id) AS nbr_of_films
FROM inventory;

-- How many films have been rented?

-- this is showing the number of unique films which have been rented
SELECT COUNT(DISTINCT inventory_id) AS rented_films
FROM rental;

-- this is showing the number of total rentals
SELECT COUNT(rental_id) AS nbr_rentals
FROM rental;

-- What is the shortest and longest rental period?
SELECT min(DATEDIFF(return_date, rental_date)) AS shortest, 
max(DATEDIFF(return_date, rental_date)) AS longest
FROM rental;

-- What are the shortest and longest movie duration? 
-- Name the values max_duration and min_duration.
SELECT MIN(length) AS min_duration, MAX(length) AS max_duration
FROM film;

-- What's the average movie duration?
SELECT AVG(length) AS avg_duration
FROM film;

-- What's the average movie duration expressed in format (hours, minutes)?
SELECT AVG(length) AS avg_duration_min, SEC_TO_TIME(ROUND(AVG(length)*60)) AS avg_duration_hrs
FROM film;

-- How many movies longer than 3 hours?
SELECT SUM(CASE WHEN length > 180 THEN 1 ELSE 0 END) AS nbr_long_movies
FROM film;

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT staff_id, first_name, UPPER(last_name), LOWER(email)
FROM staff;

-- would this be the correct code to update the data in the databank?
UPDATE staff
SET last_name = UPPER(last_name);

-- What's the length of the longest film title?
SELECT title, MAX(LENGTH(title))
FROM film;