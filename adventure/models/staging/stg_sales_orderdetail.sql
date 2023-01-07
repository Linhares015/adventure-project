with 
    source_sales_orderdetail as (
        select
            orderqty
            ,salesorderid
            ,salesorderdetailid
            ,productid
            --,specialofferid
            ,unitprice
            ,unitpricediscount
            --,linetotal
            --,rowguid
            --,modifieddate
            --,carriertrackingnumber
        from {{ source('adventure', 'sales_orderdetail') }}
    )

select *
from source_sales_orderdetail