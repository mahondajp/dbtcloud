{{ config(materialized='incremental') }}

select 
_fivetran_synced,
id,
email,
first_name,
last_name,
job_title,
role,
account,
created_at,
updated_at
from fivetran_database.pardot.user

{% if is_incremental() %}
  where _fivetran_synced > (select max(_fivetran_synced) from {{ this }})

{% endif %}