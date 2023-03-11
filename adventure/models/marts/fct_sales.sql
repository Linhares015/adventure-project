with
sales as (
    select *
    from {{ source('intermediate', 'int_fct_sales') }}
)

select *
from sales
