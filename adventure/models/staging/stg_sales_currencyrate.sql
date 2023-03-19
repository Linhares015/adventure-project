with
source_sales_currencyrate as (
    select
        currencyrateid,
        averagerate,
        endofdayrate,
        currencyratedate,
        --,modifieddate
        fromcurrencycode,
        tocurrencycode
    from {{ source('adventure', 'raw_sales_currency_rate') }}
)

select *
from source_sales_currencyrate
