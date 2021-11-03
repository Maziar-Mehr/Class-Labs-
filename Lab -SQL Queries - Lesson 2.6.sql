# Get release years.
select release_year as releaseyear from film;

# Get all films with ARMAGEDDON in the title.
SELECT * FROM film
WHERE title LIKE 'ARMAGEDDON';

# Get all films which title ends with APOLLO
select * from film where title like '%APOLLO';

# Get 10 the longest films
select length 
from film
order by length desc
limit 10;

# How many films include Behind the Scenes content?
select count(*) from film 
where special_features like "Behind the Scenes";

# Drop column picture from staff
ALTER TABLE staff DROP picture;

# A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
INSERT INTO staff (first_name,last_name,address_id,email,username,store_id)
SELECT first_name,last_name,address_id,email, "Tammy" , store_id
FROM customer
WHERE first_name = 'Tammy';


# Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table.
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select inventory_id from sakila.inventory
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select film_id from sakila.film
where title = 'Academy Dinosaur';

select staff_id from sakila.staff
where first_name = 'Mike' and last_name ="Hillyer";

insert into rental (rental_date, inventory_id, customer_id, staff_id)
values (curdate(), 1, 130, 1);


# Check if there are any non-active users
SELECT *
FROM customer 
WHERE active = 0 ;

# Create a table backup table as suggested
drop table if exists backuptable;
CREATE TABLE backuptable(
    Customer_id int,
    email varchar(50),
    fecha varchar(50));
    
# Insert the non active users in the table backup table
INSERT INTO backuptable(customer_id, email, fecha)
SELECT customer_id, email, create_date
FROM customer 
WHERE active = 0;

# Delete the non active users from the table customer
Delete from customer 
WHERE active = 0;
    
