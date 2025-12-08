with source as (

    select * from {{ ref('raw_supplies_new') }}

),

renamed as (

    select
        id as supplies_id,
        name as supplies_name,
        cost,
        perishable,
        sku

    from source

)

select * from renamed