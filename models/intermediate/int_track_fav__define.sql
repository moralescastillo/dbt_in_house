with 
track as (
    SELECT
        *        
    FROM {{ ref('stg_lastfm_play_history') }}
    WHERE
        1 = 1
        and track_id is not null 
)
, aggregate as (
SELECT
    track_id,
    count(track_id) as freq
FROM track
group by 
    track_id 
)
SELECT
    track_id,
    case 
    when freq > 50 
    then true
    else false 
    end as if_favorite
FROM aggregate
