with
customer as (
    select *
    from {{ source('intermediate', 'int_dim_customer') }}
)

select *
from customer
