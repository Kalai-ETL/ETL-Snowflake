{{config(materialized = 'table',
         transient = false
)}}

select * from {{ref('d_sales')}}
union all 
select * from {{ref('d_marketing')}}