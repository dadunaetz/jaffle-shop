with source as (

    select * from {{ ref('raw_tweets_new') }}

),

renamed as (

    select
        id as tweet_id,
        user_id,
        tweeted_at,
        content
    from source

)

select * from renamed