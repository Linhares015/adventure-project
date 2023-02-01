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
        from {{ source('adventure', 'raw_sales_person') }}
    )

select *
from source_sales_salesperson