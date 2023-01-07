with 
    source_sales_currencyrate as (
        select
            currencyrateid
            ,averagerate
            ,endofdayrate
            ,currencyratedate
            --,modifieddate
            ,fromcurrencycode
            ,tocurrencycode
        from {{ source('adventure', 'sales_currencyrate') }}
    )

select *
from source_sales_currencyrate