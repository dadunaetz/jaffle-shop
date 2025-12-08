with source as (

    select * from {{ ref('raw_customers_new') }}

),

renamed as (

    select
        id as customer_id,
        name
    from source

)

select * from renamed