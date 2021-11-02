#Select all the actors with the first name ‘Scarlett’
select * from actor where first_name = "Scarlett";

# How many films (movies) are available for rent and how many films have been rented?
select count(return_date) from rental 
where return_date is null;
select count(inventory_id) from rental;
 
# What are the shortest and longest movie duration? Name the values max_duration and min_duration
select max(length) as max_duration, min(length) as min_duration from film;

# What's the average movie duration expressed in format (hours, minutes)?
select avg(length) as AVG_DUR from film;

# How many distinct (different) actors' last names are there?
select count(DISTINCT last_name) as different_surname from actor;

# Since how many days has the company been operating (check DATEDIFF() function)?
SELECT DATEDIFF(max(rental_date), min(rental_date)) AS DateDiff from rental;

# Show rental info with additional columns month and weekday. Get 20 results.
select format(rental_date, 'dddd') as WeekDay from rental;
select format(rental_date, 'dddd') as month from rental;
# Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
select *,rental_date as weekday, 
case 
when rental_date >=6  then 'weekend'
else  'workday'
end
as day_type
from rental;

# How many rentals were in the last month of activity?
SELECT MAX(rental_date) AS "Max Date" 
FROM rental;

select count(rental_id) as last_month_rental from rental
where rental_date between "2006-01-15" and "2006-02-15";






