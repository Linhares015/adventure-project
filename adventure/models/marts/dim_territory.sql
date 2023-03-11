with
territory as (
    select *
    from {{ source('intermediate', 'int_dim_territory') }}
)

select *
from territory
