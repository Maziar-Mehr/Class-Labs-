# Review the tables in the database.
# Explore tables by selecting all columns from each table or using the in built review features for your client.
select * from actor;
select * from category;

# Select one column from a table. Get film titles
select * from film_list;

# Select one column from a table and alias it. Get unique list of film languages under the alias language. 
SELECT distinct name as language 
from language;

# Find out how many stores does the company have?
SELECT COUNT(store_id) from store;

# Find out how many employees staff does the company have?
select count(staff_id) from staff;

# Return a list of employee first names only?
select (first_name) from staff;





