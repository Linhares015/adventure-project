with 
    source_sales_store as (
        select
            businessentityid
            ,salespersonid
            ,demographics
            --,rowguid
            --,modifieddate
            ,name as name_store
        from {{ source('adventure', 'raw_sales_store') }}
    )

select *
from source_sales_store