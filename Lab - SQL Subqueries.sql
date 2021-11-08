# How many copies of the film Hunchback Impossible exist in the inventory system?
select title, count(title) as "copies available"
from film inner join inventory on 
film.film_id = inventory.film_id
where title = "Hunchback Impossible";

# List all films whose length is longer than the average of all the films.
select title from film 
where (film.length > (select avg(length) from film));

# Use subqueries to display all actors who appear in the film Alone Trip
select first_name, last_name from actor where actor_id in
(select actor_id from film_actor
where film_id = ( select film_id from film where title = "Alone Trip"));
 

# Sales have been lagging among young families, and you wish to target all family movies for a promotion. Identify all movies categorized as family films.

select title, category 
from film_list 
where category = 'Family';


# Get name and email from customers from Canada using subqueries
select first_name, last_name, email, customer_id, country from customer 
join customer_list on
customer.customer_id = customer_list.id
where country = "Canada";

# Which are films starred by the most prolific actor?
select first_name , last_name, count(film_actor.actor_id) from actor 
join film_actor on 
actor.actor_id = film_actor.actor_id
group by film_actor.actor_id; 

# Films rented by most profitable customer.
select first_name, last_name, SUM(amount) as 'Total Paid'
from payment join customer
on payment.customer_id = customer.customer_id
group by first_name, last_name
order by sum(amount) desc; 

# Customers who spent more than the average payments
select first_name, last_name, SUM(amount) as 'Total Paid'
from payment join customer
on payment.customer_id = customer.customer_id
group by first_name, last_name
order by sum(amount)>avg(amount); 



