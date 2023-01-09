with 
    source_sales_store as (
        select
            businessentityid
            ,salespersonid
            ,demographics
            --,rowguid
            --,modifieddate
            ,"Name" as name_store
        from {{ source('adventure', 'sales_store') }}
    )

select *
from source_sales_store