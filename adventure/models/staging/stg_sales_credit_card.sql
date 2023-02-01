with 
    source_sales_credit_card as (
        select
            expmonth
            ,expyear
            ,creditcardid
            --,ModifiedDate
            ,cardtype
            ,cardnumber
        from {{ source('adventure', 'raw_sales_credit_card') }}
    )

select *
from source_sales_credit_card