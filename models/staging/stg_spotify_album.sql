with 
source as (
    SELECT
        *,
        case    
        when length(release_date) = 4
        then concat(release_date, '-01-01')
        when length(release_date) = 7
        then concat(release_date, '-01')
        else release_date
        end as release_date_adj
    FROM {{ source('bigquery', 'spotify_album') }}
    WHERE
        1 = 1
)
SELECT
    artist_id,
    album_id,
    name as album_name,
    cast(release_date_adj as date) as release_date,
    associated_artist
FROM
    source
