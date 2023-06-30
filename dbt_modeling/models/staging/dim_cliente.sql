{
    { 
    config( materialized = 'table')
    }
}

with dim_cliente as (
    
    select
    *
    from {{ ref('clientes') }}

)

select * from dim_cliente