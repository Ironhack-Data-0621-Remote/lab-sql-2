-- 1. Select all the actors with the first name ‘Scarlett’.
SELECT *
FROM actor
WHERE first_name LIKE '%Scarlett%';

-- 2. Select all the actors with the last name ‘Johansson’.
SELECT *
FROM actor
WHERE last_name LIKE '%Johansson%';

-- 3. How many films (movies) are available for rent? (Total amount of movies)
SELECT COUNT(*)
FROM  inventory;

-- 4. How many films have been rented?
SELECT COUNT(*)
FROM rental
LIMIT 5;

-- 5. What is the shortest and longest rental period?
SELECT MAX(rental_duration), MIN(rental_duration)
FROM film;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT MAX(length) AS max_duration, MIN(length) AS min_duration
FROM film;

-- 7. What's the average movie duration?
SELECT AVG(length)
FROM film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
SELECT SEC_TO_TIME(ROUND(AVG(length)*60)) AS hoursminutes
FROM film;

-- 9. How many movies longer than 3 hours?
SELECT COUNT(*)
FROM film
WHERE rental_duration > 3;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT CONCAT(UPPER(SUBSTR(first_name, 1, 1)), LOWER(SUBSTR(first_name, 2)), ' ', last_name, ' ', '-', ' ', LOWER(email)) AS info
FROM customer;

-- 11. What's the length of the longest film title?
SELECT title, MAX(length)
FROM film
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;