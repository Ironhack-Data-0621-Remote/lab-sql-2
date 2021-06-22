-- 1. Select all the actors with the first name ‘Scarlett’.
-- SELECT * FROM actor
-- WHERE first_name = 'Scarlett';

-- 2. Select all the actors with the last name ‘Johansson’.
-- SELECT * FROM actor
-- WHERE last_name = 'Johansson';

-- 3. How many films (movies) are available for rent? (Total amount of movies)
-- SELECT count(*) FROM film;

-- 4. How many films have been rented?
-- SELECT 
-- sum(case when rental_rate = ' ' or rental_rate is NULL or rental_rate = 0 then 1 else 0 end) as not_rented,
-- sum(case when rental_rate != ' ' or rental_rate is NOT NULL or rental_rate != 0 then 1 else 0 end) as rented
-- FROM film;

-- 5. What is the shortest and longest rental period?
-- SELECT min(rental_duration), max(rental_duration) FROM film;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
-- SELECT min(length) as min_duration, max(length) as max_duration FROM film;

-- 7. What's the average movie duration?
-- SELECT floor(avg(length)) as avg_duration FROM film;

-- 8. What's the average movie duration expressed in format (hours, minutes)? 
-- SELECT concat(floor(avg(length)/60), 'h', round(avg(length)%60), 'm') as avg_duration
-- FROM film;
-- -> I'm cheating here! 
-- proper way:
-- SELECT sec_to_time(round(avg(length))*60) as avg_duration
-- FROM film;

-- 9. How many movies longer than 3 hours?
-- SELECT count(length) FROM film
-- WHERE length > (3*60);

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
-- SELECT concat(first_name, ' ', upper(last_name), ' - ', lower(email)) as data
-- FROM staff;

-- 11. What's the length of the longest film title?
-- SELECT max(length(title))
-- FROM film;