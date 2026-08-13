{{ config(materialized = 'incremental')}}

select 
sale_id,
    sale_date,
    product_name,
    quantity,
    total_amount,
    updated_dt, current_timestamp() as load_date
    from {{ source('employee_source','SALES')}}

    {%if is_incremental() %}
           where updated_dt > (select max(updated_dt) from {{this}})
    {% endif %}       

