
{{ config(materialized='table') }}


SELECT *
FROM {{ source('data_needed', 'fhv_tripdata')  }} --`dtc-de-course-339411.trips_data_all.fhv_tripdata` 
WHERE DATE(pickup_datetime) >= "2019-05-24"
    and DATE(pickup_datetime) < "2019-05-25"
    and PULocationID < 20
