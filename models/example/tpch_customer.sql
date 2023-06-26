{{ config(materialized='table', tags=["dvtest"]) }}

select C_CUSTKEY,
C_NAME,
C_ADDRESS,
C_NATIONKEY,
C_PHONE,
C_ACCTBAL,
C_MKTSEGMENT,
C_COMMENT
from snowflake_sample_data.tpch_sf1.customer limit 10