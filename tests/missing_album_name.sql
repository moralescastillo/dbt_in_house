
{{ config(
    tags=['legacy']
) }}

with 
check as (
    select
    *
    from 
    {{ ref('dim_album') }}   
)
select * from check where artist_id is null 