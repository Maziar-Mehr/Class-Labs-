# List number of films per category.
SELECT category, COUNT(*) AS number_of_film 
FROM film_list
GROUP BY category
ORDER BY  number_of_film;

# Display the first and last names, as well as the address, of each staff member.
SELECT first_name, last_name, address    
FROM staff INNER JOIN address
ON staff.address_id = address.address_id;

# Display the total amount rung up by each staff member in August of 2005.
SELECT first_name, last_name, SUM(amount) as 'Total Amount'
FROM staff INNER JOIN payment
ON staff.staff_id = payment.staff_id AND payment_date LIKE '2005-08%'
GROUP BY first_name, last_name;

# List each film and the number of actors who are listed for that film.
SELECT title, COUNT(actor_id) as 'Actor Count'
FROM film_actor INNER JOIN film
ON film_actor.film_id = film.film_id
GROUP BY title;

# Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name.
SELECT first_name, last_name, SUM(amount) as 'Total by Each Customer'
FROM payment INNER JOIN customer
ON payment.customer_id = customer.customer_id
GROUP BY first_name, last_name
ORDER BY last_name; 


