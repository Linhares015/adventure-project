with
orderdetail as (
    select *
    from {{ source('stg', 'stg_sales_orderdetail') }}
),

orderheader as (
    select *
    from {{ source('stg', 'stg_sales_orderheader') }}
),

reason as (
    select *
    from {{ source('stg', 'stg_sales_header_reason') }}
),

joined as (
    select
        orderdetail.salesorderid,
        orderdetail.salesorderdetailid,
        orderdetail.productid,
        orderheader.customerid,
        orderheader.territoryid,
        orderheader.salespersonid,
        reason.salesreasonid,
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
    left join reason on orderheader.salesorderid = reason.salesorderid
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
        salesreasonid,
        unitprice,
        orderqty,
        unitpricediscount,
        taxamt,
        freight,
        purchaseordernumber,
        orderdate,
        duedate,
        --,onlineorderflag
        cast(
            coalesce(salespersonid, 999)
            as int) as salespersonid,
        (unitprice - unitpricediscount) * orderqty as total,
        case
            when onlineorderflag is true then 'Sim'
            else 'Não'
        end as onlineorder
    from joined
)



select *
from transformacoes
