select rental_id, staff.staff_id, rental_date, title, rentaldata.first_name, rentaldata.email, last_name, rentaldata.active, customer_id , staff.first_name staffname,
return_date, rentaldata.store_id
from {{ ref('rentaldata') }} , staff
where rentaldata.staff_id = staff.staff_id 