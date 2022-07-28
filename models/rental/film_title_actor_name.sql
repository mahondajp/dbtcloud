select title, description , rating , last_name , first_name , release_year, rental_rate from "FIVETRAN_DATABASE"."POSTGRES_RDS_DATABASEDBT_PUBLIC"."FILM" , "FIVETRAN_DATABASE"."POSTGRES_RDS_DATABASEDBT_PUBLIC"."FILM_ACTOR", "FIVETRAN_DATABASE"."POSTGRES_RDS_DATABASEDBT_PUBLIC"."ACTOR"
where "FIVETRAN_DATABASE"."POSTGRES_RDS_DATABASEDBT_PUBLIC"."ACTOR".actor_id = "FIVETRAN_DATABASE"."POSTGRES_RDS_DATABASEDBT_PUBLIC"."FILM_ACTOR".actor_id 
and "FIVETRAN_DATABASE"."POSTGRES_RDS_DATABASEDBT_PUBLIC"."FILM".film_id = "FIVETRAN_DATABASE"."POSTGRES_RDS_DATABASEDBT_PUBLIC"."FILM_ACTOR".film_id 