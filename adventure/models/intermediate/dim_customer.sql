with
    customer as (
        select *
        from {{ source('stg', 'stg_sales_customer') }}
    )

    ,transformacoes as (
        select 
            *
        from customer
    )

select *
from transformacoes