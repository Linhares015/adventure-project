with 
    source_sales_customer as (
        select
            customerid
            ,personid
            --,storeid
            ,territoryid
            --,rowguid
            --,modifieddate
            --,accountnumber
        from {{ source('adventure', 'sales_customer') }}
    )

select *
from source_sales_customer