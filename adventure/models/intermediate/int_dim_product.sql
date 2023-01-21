with
    product as (
        select *
        from {{ source('stg', 'stg_production_product') }}
    )

    ,transformacoes as (
        select 
            productid
            ,name_product
        from product
    )

select *
from transformacoes

