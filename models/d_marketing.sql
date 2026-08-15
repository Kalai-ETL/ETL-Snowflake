{{ config(materialized = 'ephemeral')}}

SELECT department, avg(sales_amount) as avg_sales
FROM {{ source('employee_source','EMPLOYEE_DETAILS')}}
---OUR_FIRST_DB.PUBLIC.EMPLOYEE_DETAILS
where department ilike  'marketing'
group by all
