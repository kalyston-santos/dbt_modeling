
{{ config(materialized='table') }}

with clientes as (
    select * from {{ source('dvdrental','clientes')}}    
)

select *
from clientes