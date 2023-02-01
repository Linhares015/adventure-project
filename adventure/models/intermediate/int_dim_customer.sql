with
    customer as (
        select *
        from {{ source('stg', 'stg_sales_customer') }}
    )

    ,store as (
        select *
        from {{ source('stg', 'stg_sales_store') }}
    )

    ,salesperson as (
        select *
        from {{ source('stg', 'stg_sales_salesperson') }}
    )

    ,joined as (
        select 
            customer.customerid
            --,customer.personid
            --,customer.territoryid
            --,store.businessentityid
            ,store.salespersonid
            --,store.demographics
            ,store.name_store
            ,salesperson.territoryid 
        from customer
        left join store on customer.storeid = store.businessentityid
        left join salesperson on store.salespersonid = salesperson.businessentityid
    )

select *
from joined