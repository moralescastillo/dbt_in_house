with 
source as (
    select * from 
    {{ ref('stg_spotify_album') }}
)
select * from source