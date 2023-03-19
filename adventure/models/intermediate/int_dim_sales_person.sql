with
sales_person as (
    select *
    from {{ source('stg', 'stg_sales_salesperson') }}
),

sales_territory as (
    select *
    from {{ source('stg', 'stg_sales_territory') }}
),

employee as (
    select *
    from {{ source('stg', 'stg_human_resources_employee') }}
),

person_person as (
    select *
    from {{ source('stg', 'stg_person_person') }}
),

joined as (
    select
        sales_person.businessentityid,
        sales_territory.name_territory,
        sales_territory.countryregioncode,
        sales_territory.group_territory,
        person_person.persontype,
        employee.gender,
        person_person.firstname || ' ' || person_person.middlename || ' ' || person_person.lastname as name_customer
    from sales_person
    left join sales_territory
        on sales_person.territoryid = sales_territory.territoryid
    left join employee
        on sales_person.businessentityid = employee.businessentityid
    left join person_person
        on employee.businessentityid = person_person.businessentityid
)

select *
from joined
