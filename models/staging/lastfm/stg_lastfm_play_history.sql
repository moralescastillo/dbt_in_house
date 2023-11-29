with 
source as
(
    SELECT
        *,
        TIMESTAMP_SECONDS(timestamp) as timestamp_adj
    FROM {{ source('bigquery', 'lastfm_play_history') }}
    WHERE
        1 = 1
)
SELECT
    artist as artist_name,
    track as track_name,
    timestamp_adj as play_timestamp,
    artist_id,
    track_id   
FROM 
    source
