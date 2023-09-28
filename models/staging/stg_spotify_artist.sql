with 
source as (
    SELECT
        *
    FROM {{ source('bigquery', 'spotify_artist') }}
    WHERE
        1 = 1
)
SELECT
    id as artist_id,
    name as artist_name,
    popularity,
    followers,
    genres,
    uri
FROM
    source