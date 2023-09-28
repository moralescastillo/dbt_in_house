with 
track as (
SELECT
    *
FROM {{ ref('stg_lastfm_play_history') }}
WHERE
    1 = 1
)
SELECT
    track_id,
    track_name,
    artist_id
FROM track
group by 
    track_id,
    track_name,
    artist_id