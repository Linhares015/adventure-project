with
reason as (
    select *
    from {{ source('intermediate', 'int_dim_reason') }}
)

select *
from reason
