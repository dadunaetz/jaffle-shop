with source as (

    select * from {{ ref('raw_stores_new') }}

),

renamed as (

    select
        id as store_id,
        name as store_name,
        opened_at,
        tax_rate

    from source

)

select * from renamed