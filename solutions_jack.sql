-- 1. Select all the actors with the first name ‘Scarlett’.

SELECT *
FROM actor
WHERE first_name = "Scarlett";

-- 2. Select all the actors with the last name ‘Johansson’.

SELECT *
FROM actor
WHERE last_name = "Johansson";

-- 3. How many films (movies) are available for rent? (Total amount of movies)

SELECT DISTINCT COUNT(title)
FROM film;

-- 1000

-- 4. How many films have been rented?

SELECT COUNT(*)
FROM film
WHERE rental_duration > 0;

-- also 1000

-- 5. What is the shortest and longest rental period?

SELECT MIN(rental_duration)
FROM film;

-- shortest = 3

SELECT MAX(rental_duration)
FROM film;

-- longest = 7


-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.

SELECT MIN(length) AS min_duration
FROM film;

-- shortest = 46 minutes

SELECT MAX(length) AS max_duration
FROM film;

-- longest = 185 minutes

-- 7. What's the average movie duration?

SELECT AVG(length)
FROm film;

-- avg = 115.27 minutes

-- 8. What's the average movie duration expressed in format (hours, minutes)?

SELECT DATE_FORMAT(CONVERT(AVG(length),TIME),"%hh-%mm")
FROM film;

-- the above code is wrong - how would i do it correctly?

-- 9. How many movies longer than 3 hours?

SELECT COUNT(*)
FROM film
WHERE length > 180;

-- 39 movies longer than 3 hours

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.

SELECT CONCAT(LEFT(UPPER(first_name),1),SUBSTRING(LOWER(first_name),2,LENGTH(first_name))) AS formatted_first_name, UPPER(last_name) AS formatted_second_name, LOWER(email) AS email
FROM customer;

-- seems like the above code worked but surely there is a better way of doing it?

-- 11. What's the length of the longest film title?

SELECT MAX(LENGTH(title))
FROM film;

-- 27 characters
