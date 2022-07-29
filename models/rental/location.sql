select country.country_id , country , city.city_id, city, address , phone, district , postal_code from country , city, address 
where country.country_id = city.country_id and 
city.city_id = address.city_id 