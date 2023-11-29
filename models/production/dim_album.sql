{{
    config(
        materialized='table'
    )
}}
select * from {{ ref('int_album__define') }}