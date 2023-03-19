with
source_sales_header_reason as (
    select
        salesorderid,
        salesreasonid
    --modifieddate
    from {{ source('adventure', 'raw_sales_order_header_reason') }}
)

select *
from source_sales_header_reason
