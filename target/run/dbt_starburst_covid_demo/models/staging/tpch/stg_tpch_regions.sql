
  
    

    create table "hive"."victorc_dbt_dev"."stg_tpch_regions"
      
      
    as (
      with source as (

    select * from "tpch"."tiny"."region"

),

renamed as (

    select
    
        regionkey as region_key,
        name as name,
        comment as comment

    from source

)

select * from renamed
    );

  