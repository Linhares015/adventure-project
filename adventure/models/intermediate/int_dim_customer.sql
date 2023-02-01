with
    customer as (
        select *
        from {{ source('stg', 'stg_sales_customer') }}
    )

    ,sales_territory as (
        select *
        from {{ source('stg', 'stg_sales_territory')}}
    )

    ,person_person as (
        select *
        from {{ source('stg', 'stg_person_person')}}
    )

    ,joined as (
        select 
            customer.customerid
            ,sales_territory.name_territory
            ,sales_territory.countryregionCode
            ,sales_territory.group_territory
            ,person_person.persontype
            ,person_person.firstname || ' ' || person_person.middlename  || ' ' || person_person.lastname as name_customer
        from customer
        left join sales_territory 
            on customer.territoryid = sales_territory.territoryid
        left join person_person 
            on customer.personid = person_person.businessentityid
    )

select *
from joined