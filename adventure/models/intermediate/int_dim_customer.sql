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

    ,salesterritory as (
        select *
        from {{ source('stg', 'stg_sales_territory') }}
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
            --,salesperson.territoryid 
            ,salesterritory.name_territory
            ,salesterritory.countryregioncode
            ,salesterritory.group_territory
        from customer
        left join store on customer.storeid = store.businessentityid
        left join salesperson on store.salespersonid = salesperson.businessentityid
        left join salesterritory on salesperson.territoryid = salesterritory.territoryid
    )

select *
from joined