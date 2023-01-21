with
    product as (
        select *
        from {{ source('intermediate', 'int_dim_product') }}
    )

select *
from product