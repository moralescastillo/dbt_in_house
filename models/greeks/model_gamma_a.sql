{{ 
	config(
		materialized='table'
	) 
}}


with v1 as (

    select * from 
    {{ ref('model_beta_a') }}





)

select * from v1