{{ 
	config(
		materialized='table'
	) 
}}


with v1 as (

    select *,
    1/0 test 
    from 
    {{ ref('model_alpha') }}
    where 
    1 = 1

)

select * from v1