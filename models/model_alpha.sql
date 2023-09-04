{{ 
	config(
		materialized='table'
	) 
}}

with v1 as (

    select * from {{ source('my_source_schema', 'my_source_table') }} limit 100
)

select * from v1