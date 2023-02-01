with 
    source_sales_customer as (
        select
            customerid
            ,personid
            ,storeid
            ,territoryid
            --,rowguid
            --,modifieddate
            --,accountnumber
        from {{ source('adventure', 'raw_sales_customer') }}
    )

select *
from source_sales_customer