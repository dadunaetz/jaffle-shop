with source as (

    select * from {{ ref('raw_items_new') }}

),

renamed as (

    select
        id as item_id,
        order_id,
        sku

    from source

)

select * from renamed
