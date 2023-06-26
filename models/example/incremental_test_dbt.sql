{{ config(materialized='incremental') }}
select 
id,
name,
_fivetran_synced
from incremental_test
{% if is_incremental() %}
where _fivetran_synced > (select max(_fivetran_synced) from {{ this }})
{% endif %}