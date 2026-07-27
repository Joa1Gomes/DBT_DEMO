{{config(materialized='table')}}

with BIKE as (

    select
        DISTINCT 
        START_STATION_ID,
        START_STATION_NAME,
        START_STATION_LATITUDE,
        START_STATION_LONGITUDE
    from {{source('demo', 'BIKES')}}

)
select *
from BIKE