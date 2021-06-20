-- Select all the actors with the first name ‘Scarlett’.
SELECT distinct last_name FROM sakila.actor
where first_name = 'Scarlett';

-- Select all the actors with the last name ‘Johansson’.
SELECT distinct first_name FROM sakila.actor
where last_name = 'Johansson';

-- How many films (movies) are available for rent?
select count('rental_id') from sakila.rental;

-- How many films have been rented?
-- in the payment tab, I cannot see any columns showing how many films were rented per payment id so I considered 1 movie rented per transactions
select count('payment_id') from sakila.payment;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select min(length) as min_durantion, max(length) as max_duration
from sakila.film;

-- What's the average movie duration?
select avg(length) as avg_duration
from sakila.film;

-- What's the average movie duration expressed in format (hours, minutes)?
select concat((left(avg(length),1), "hour and", mod(avg(length),60)), "minutes") as formatted_avg_duration
from sakila.film;
-- I cannot understand why my code is wrong

-- How many movies longer than 3 hours?
select count(film_id) as nb_films_longer_3h
from sakila.film
where length > 180;

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
-- I am not sure I understood this question : should I just make emails format lower case ? 
select *, lower(email) as formatted_email
from sakila.customer;

-- What's the length of the longest film title?
select max(length(title)) as longest_film_title_length
from sakila.film;