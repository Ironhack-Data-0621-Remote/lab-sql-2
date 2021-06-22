USE sakila;

-- 1. Select all the actors with the first name ‘Scarlett’.
SELECT * FROM actor
WHERE first_name = "Scarlett"; 

-- 2. Select all the actors with the last name ‘Johansson’.
SELECT * FROM actor
where last_name = "Johansson"; 

-- 3. How many films (movies) are available for rent?
SELECT COUNT(title) AS count_films FROM film; 

-- 4. How many films have been rented?
SELECT count(rental_id) AS count_rental FROM rental; 


-- 5. What is the shortest and longest rental period?
SELECT MIN(rental_duration) AS Shoortest_rental_period, MAX(rental_duration) AS Longest_rental_period
FROM film;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration. (46, 185 Min) 
SELECT MIN(length) AS min_duration, MAX(length) AS max_duration
FROM film;

-- 7. What's the average movie duration? (115 Min) 
SELECT AVG(length) AS avg_duration
FROM film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
SELECT FLOOR(AVG(length)/60) FROM film; 

SELECT AVG(length), FLOOR(AVG(length)/60) AS avg_hrs, ROUND(AVG(length)%60) AS minutes FROM film; 

SELECT AVG(length), CONCAT(FLOOR(AVG(length)/60), "h", ROUND(AVG(length)%60), "m") AS avg_hrs FROM film;

-- 9. How many movies longer than 3 hours?

SELECT COUNT(*) FROM film
WHERE length > 180; 

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.

-- SELECT * FROM customer LIMIT 10; 
SELECT concat(upper(substr(first_name, 1, 1)), lower(substr(first_name,2))) AS new_name, 
last_name,
lower(email) AS new_email FROM customer;

-- 11. What's the length of the longest film title?

-- SELECT title FROM film LIMIT 10; 
SELECT MAX(length(title)) FROM film;

