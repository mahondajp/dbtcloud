select * 
from {{ ref('rentaldata') }} , staff
where rentaldata.staff_id = staff.staff_id 