with
sales_person as (
    select *
    from {{ source('intermediate', 'int_dim_sales_person') }}
)

select *
from sales_person
