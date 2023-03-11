with
product as (
    select *
    from {{ source('stg', 'stg_product_product') }}
),

transformacoes as (
    select
        productid,
        name_product
    from product
)

select *
from transformacoes
