with 
    source_person_person as (
        select
        persontype
        ,businessentityid
        ,emailpromotion
        ,modifieddate
        --,rowguid
        ,namestyle
        ,title
        ,firstname
        ,middlename
        ,lastname
        ,suffix
        ,additionalcontactInfo
        ,demographics
        from {{ source('adventure', 'raw_person_person') }}
    )

select *
from source_person_person