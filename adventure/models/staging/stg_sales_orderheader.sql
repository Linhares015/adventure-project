with 
    source_sales_orderheader as (
        select
            onlineorderflag
            ,revisionnumber
            ,'status'
            ,salesorderid
            ,customerid
            ,salespersonid
            ,territoryid
            ,billtoaddressid
            ,shiptoaddressid
            ,shipmethodid
            ,creditcardid
            ,currencyrateid
            ,subtotal
            ,taxamt
            ,freight
            ,totaldue
            ,rowguid
            ,orderdate
            ,duedate
            ,shipdate
            ,modifieddate
            ,salesordernumber
            ,purchaseordernumber
            ,accountnumber
            ,creditcardapprovalcode
            --,comment
        from {{ source('adventure', 'sales_orderheader') }}
    )

select *
from source_sales_orderheader