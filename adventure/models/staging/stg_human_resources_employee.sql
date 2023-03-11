with
source_person_person as (
    select
        --salariedflag
        --,currentflag
        --,maritalstatus
        gender,
        birthdate,
        --,hiredate
        --,vacationhours
        --,sickleavehours
        businessentityid,
        --,organizationlevel
        --,organizationnode
        --,modifieddate
        --,rowguid
        --,nationalidnumber
        --,loginid
        jobtitle
    from {{ source('adventure', 'raw_human_resources_employee') }}
)

select *
from source_person_person
