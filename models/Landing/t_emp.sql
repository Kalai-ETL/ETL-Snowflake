select id, concat(first_name,' ',last_name) as full_name,
email,case when gender= 'M' then 'MALE'
when gender = 'F' then 'FEMALE'
else null end as gender,job,phone
from OUR_FIRST_DB.PUBLIC.TEST