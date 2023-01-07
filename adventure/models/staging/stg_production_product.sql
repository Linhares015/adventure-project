with 
    source_production_product as (
        select
            makeflag
            ,finishedgoodsflag
            ,safetystocklevel
            ,reorderpoint
            ,productid
            ,daystomanufacture
            ,productsubcategoryid
            ,productmodelid
            ,standardcost
            ,listprice
            --,weight
            ,rowguid
            ,sellstartdate
            ,sellenddate
            ,discontinueddate
            --,modifieddate
            ,"Name" as name_product
            ,productnumber
            ---,color
            --,Size
            ,sizeunitmeasurecode
            ,weightunitmeasurecode
            ,productline
            --,Class
            --,Style
        from {{ source('adventure', 'production_product') }}
    )

select *
from source_production_product