select rental_id, rental.inventory_id , staff_id , rental.last_update as rental_last_update , rental_date, title, first_name , email , active , rental.customer_id , return_date ,inventory.store_id 
from rental , customer, inventory, film
where rental.customer_id = customer.customer_id and rental.inventory_id = inventory.inventory_id and inventory.inventory_id = film.film_id 