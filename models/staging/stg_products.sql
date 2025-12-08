with source as (

    select * from {{ ref('raw_products_new') }}

),

renamed as (

    select
        sku,
        name as product_name,
        type as product_type,
        price,
        description as product_description

    from source

)

select * from renamed