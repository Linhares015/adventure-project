with
customer as (
    select *
    from {{ source('stg', 'stg_sales_customer') }}
),

person_person as (
    select *
    from {{ source('stg', 'stg_person_person') }}
),

joined as (
    select
        customer.customerid,
        customer.territoryid,
        person_person.persontype,
        person_person.firstname || ' ' || person_person.middlename || ' ' || person_person.lastname as name_customer
    from customer
    left join person_person
        on customer.personid = person_person.businessentityid
)

select *
from joined
