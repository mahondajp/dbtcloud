select rental_id, staffdata.staff_id, title, rental_date, titlesummary.first_name, titlesummary.last_name, titlesummary.email , 
titlesummary.active, customer_id, staffname, titlesummary.return_date, staffdata.store_id 
from titlesummary , staffdata 
where staffdata.staff_id = titlesummary.staff_id 