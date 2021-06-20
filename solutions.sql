use sakila;
-- select all the actors with the first name ‘Scarlett’.
select * from sakila.actor
where first_name = 'Scarlett'; 
-- select all the actors with the last name ‘Johansson’.
select * from sakila.actor
where last_name = 'Johansson';
-- how many movies are available for rent?
select count(distinct title) as number_of_movies_available_for_rent
from film;
-- how many movies have been rented?
select count(rental_id) as number_of_movies_rented
from rental;
-- What is the shortest and longest rental period?
select min(rental_duration) as shortest_rental_period, max(rental_duration) as longest_rental_period
from film;
-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select min(length) as min_duration, max(length) as max_duration
from film;
-- What's the average movie duration?
select avg(length) as average_movie_duration
from film; 
-- What's the average movie duration expressed in format (hours, minutes)?
select concat((floor(avg(length)/60)), ':', floor(((avg(length)/60) - (floor(avg(length)/60)))*60))
from film;
-- How many movies longer than 3 hours?
select count(case when length > 180 then 1 else null end)
from film;
-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(upper(substr(first_name,1,1)), lower(substr(first_name,2)), ' ', upper(last_name), ' - ', lower(email)) as name_email_formatted
from customer;
-- What's the length of the longest film title?
select max(length(title)) as length_of_longest_title
from film;
