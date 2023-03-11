with
territory as (
    select *
    from {{ source('stg', 'stg_sales_territory') }}
),

transformacoes as (
    select
        territoryid,
        name_territory,
        countryregioncode,
        group_territory
    from territory
)

select *
from territory
