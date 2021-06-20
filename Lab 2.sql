USE sakila;

-- 1. Select all the actors with the first name ‘Scarlett’.
select * from actor
where first_name = 'Scarlett';

-- 2. Select all the actors with the last name ‘Johansson’.
select * from actor
where last_name = 'Johansson';

-- 3. How many films (movies) are available for rent? (Total amount of movies)
select count(title) as Total_amount_of_movies from film;

-- 4. How many films have been rented?
select count(rental_rate) as rented_film from film;

-- 5. What is the shortest and longest rental period?
select min(rental_duration), max(rental_duration) from film;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
-- ALTER TABLE film 
-- RENAME COLUMN length TO new_lenght;
select min(new_lenght) as min_duration, max(new_lenght) as max_duration from film;

-- 7. What's the average movie duration?
select round(avg(new_lenght)) as duration_average from film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
select SEC_TO_TIME(round(avg(new_lenght))*60) as duration_average from film;
-- 9. How many movies longer than 3 hours?
select title from film
where SEC_TO_TIME(round(new_lenght)*60) > '03:00:00';

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select email, lower(email) from customer;

-- 11. What's the length of the longest film title?
select max(length(title)) as max_length from film;