with 
    source_sales_territory as (
        select
            territoryid
            --,salesytd
            --,saleslastyear
            --,costytd
            --,costlastyear
            --,rowguid
            --,modifieddate
            ,"Name" as name_territory
            ,countryregioncode
            ,"Group" as group_territory
        from {{ source('adventure', 'sales_territory') }}
    )

select *
from source_sales_territory