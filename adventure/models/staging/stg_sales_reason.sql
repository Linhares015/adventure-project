with 
    source_sales_reason as (
        select
            salesreasonid
            --,modifieddate
            ,name as name_reason
            ,reasontype
        from {{ source('adventure', 'raw_sales_reason') }}
    )

select *
from source_sales_reason 