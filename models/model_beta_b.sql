{{ 
	config(
		materialized='table'
	) 
}}


with v1 as (

    select * from 
    {{ ref('model_alpha') }}
    where 
    1 = 1

)

select * from v1