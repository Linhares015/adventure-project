with
orderdetail as (
    select *
    from {{ source('stg', 'stg_sales_orderdetail') }}
),

orderheader as (
    select *
    from {{ source('stg', 'stg_sales_orderheader') }}
),

joined as (
    select
        orderdetail.salesorderid,
        orderdetail.salesorderdetailid,
        orderdetail.productid,
        orderheader.customerid,
        orderheader.territoryid,
        orderheader.salespersonid,
        orderheader.currencyrateid,
        orderdetail.unitprice,
        orderdetail.orderqty,
        orderdetail.unitpricediscount,
        orderheader.subtotal,
        orderheader.taxamt,
        orderheader.freight,
        orderheader.purchaseordernumber,
        orderheader.onlineorderflag,
        orderheader.orderdate,
        orderheader.duedate
    from orderdetail
    left join orderheader on orderdetail.salesorderid = orderheader.salesorderid
),

transformacoes as (
    select
        salesorderid,
        salesorderdetailid,
        productid,
        customerid,
        territoryid,
        --,salespersonid
        currencyrateid,
        unitprice,
        orderqty,
        unitpricediscount,
        taxamt,
        freight,
        purchaseordernumber,
        orderdate,
        duedate,
        --,onlineorderflag
        COALESCE(salespersonid, 999) as salespersonid,
        (unitprice - unitpricediscount) * orderqty as total,
        case
            when onlineorderflag is true then 'yes'
            else 'no'
        end as onlineorder
    from joined
)



select *
from transformacoes
