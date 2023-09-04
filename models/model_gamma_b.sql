{{ 
	config(
		materialized='table'
	) 
}}


with v1 as (

    select * from 
    {{ ref('model_beta_b') }}





)

select * from v1