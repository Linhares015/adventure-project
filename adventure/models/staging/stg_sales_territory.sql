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
            ,name as name_territory
            ,countryregioncode
            ,group_territory
        from {{ source('adventure', 'raw_sales_territory') }}
    )

select *
from source_sales_territory