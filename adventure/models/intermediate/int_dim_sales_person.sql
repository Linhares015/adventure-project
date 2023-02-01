with
    sales_person as (
        select *
        from {{ source('stg', 'stg_sales_salesperson') }}
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
            sales_person.businessentityid
            ,sales_territory.name_territory
            ,sales_territory.countryregionCode
            ,sales_territory.group_territory
            ,person_person.persontype
            ,person_person.firstname || ' ' || person_person.middlename  || ' ' || person_person.lastname as name_customer
        from sales_person
        left join sales_territory 
            on sales_person.territoryid = sales_territory.territoryid
        left join person_person 
            on sales_person.businessentityid = person_person.businessentityid
    )

select *
from joined