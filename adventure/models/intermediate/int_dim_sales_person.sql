with
    sales_person as (
        select *
        from {{ source('stg', 'stg_sales_salesperson') }}
    )

    ,transformacoes as (
        select 
            businessentityid
            ,territoryid
            --,salesquota
            --,bonus
            --,commissionpct
        from product
    )

select *
from transformacoes