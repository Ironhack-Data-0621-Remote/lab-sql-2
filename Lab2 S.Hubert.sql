-- Select all the actors with the first name ‘Scarlett’.
-- select * from Actor
-- where first_name = 'Scarlett';

-- Select all the actors with the last name ‘Johansson’.
-- select * from Actor
-- where last_name = 'Johansson';


-- How many films (movies) are available for rent?
-- select count(film_id) from inventory;


-- How many films have been rented?
-- select count(film_id) from film;


-- What is the shortest and longest rental period?
-- select max(film.rental_duration) ' max_rental_duration', min(film.rental_duration) ' min_rental_duration' 
-- from film;



-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
-- select max(film.length) ' max_Length', min(film.length) ' min_Length' 
-- from film;


-- What's the average movie duration?
-- select avg(film.length) 'average_Length' from film;


-- What's the average movie duration expressed in format (hours, minutes)?
-- select avg(date_format(convert(film.length, date), '%h.%i'))
-- from film;


-- How many movies longer than 3 hours?
-- select count(film.title)
-- from film
-- where (film.length) > 180;

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
-- select concat(upper(left(first_name, 1)), lower(substring(first_name, 2)),'  ', last_name,' - ', lower(email))  as customer_information
-- from customer;


-- What's the length of the longest film title?
-- select max(length(film.title)) ' longest_film_title', film.title, film.length
-- from film;