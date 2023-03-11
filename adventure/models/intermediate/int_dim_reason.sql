with
reason as (
    select *
    from {{ source('stg', 'stg_sales_reason') }}
),

transformacoes as (
    select
        salesreasonid,
        name_reason,
        reasontype
    from reason
)

select *
from transformacoes
