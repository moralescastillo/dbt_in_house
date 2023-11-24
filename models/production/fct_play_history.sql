{{
    config(
        materialized='table'
    )
}}

with 
play as (
    SELECT
        *
    FROM {{ ref('stg_lastfm_play_history') }}
    WHERE
        1 = 1
) 
SELECT
    {{ 
		dbt_utils.generate_surrogate_key(
			['track_id', 
            'play_timestamp']
		) 
	}} as play_history_id,
    artist_name,
    track_name,
    play_timestamp,
    artist_id,
    track_id   
FROM play
