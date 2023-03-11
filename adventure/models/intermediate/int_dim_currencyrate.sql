with
currency as (
    select *
    from {{ source('stg', 'stg_sales_currencyrate') }}
),

transformacoes as (
    select *
    from currency
)

select *
from transformacoes
