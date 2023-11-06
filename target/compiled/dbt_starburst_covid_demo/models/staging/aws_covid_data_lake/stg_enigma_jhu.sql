with source as (

    select * from "hive"."covid"."enigma_jhu"

),

renamed as (

    select
    
        fips,
        admin2 as county,
        province_state,
        country_region,
        last_update,
        latitude,
        longitude,
        confirmed,
        combined_key

    from source

)

select * from renamed