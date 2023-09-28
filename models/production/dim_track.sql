{{
    config(
        materialized='table'
    )
}}
with
spine as (
    SELECT
        *
    FROM {{ ref('int_track__spine') }}
    WHERE
        1=1
)
, fav as (
    SELECT
        *
    FROM {{ ref('int_track_fav__define') }}
    WHERE
        1=1
)
SELECT
    spine.*,
    fav.if_favorite
FROM spine
left join fav 
on spine.track_id = fav.track_id
