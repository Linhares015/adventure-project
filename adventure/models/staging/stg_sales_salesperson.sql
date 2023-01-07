with 
    source_sales_salesperson as (
        select
            businessentityid
            ,territoryid
            ,salesquota
            ,bonus
            ,commissionpct
            --,salesytd
            --,saleslastyear
            --,rowguid
            --,modifieddate
        from {{ source('adventure', 'sales_salesperson') }}
    )

select *
from source_sales_salesperson