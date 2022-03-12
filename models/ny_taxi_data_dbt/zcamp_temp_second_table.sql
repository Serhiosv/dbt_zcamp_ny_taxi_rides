
{{ config(materialized='view') }}

select *
from {{ ref('zcamp_temp') }}
where PULocationID = 3

