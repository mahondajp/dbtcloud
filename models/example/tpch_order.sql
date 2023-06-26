{{ config(materialized='table', tags=["dvtest"]) }}

select * from snowflake_sample_data.tpch_sf1.orders limit 100