{{ config(
    materialized = 'table',
    transient = false,
    schema = 'LANDING'
) }}

SELECT
    id,
    first_name,
    last_name,
    email,
    CASE
        WHEN gender = 'M' THEN 'MALE'
        WHEN gender = 'F' THEN 'FEMALE'
        ELSE NULL
    END AS gender,
    job,
    phone
FROM OUR_FIRST_DB.PUBLIC.TEST