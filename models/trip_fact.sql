{{config(materialized='table')}}

with trips as(
    select
        BIKE_ID,
        DATE(TO_TIMESTAMP(START_TIME)) AS TRIP_DATE,
        START_STATION_ID,
        END_STATION_ID,
        USER_TYPE,
        TIMESTAMPDIFF(second, TO_TIMESTAMP(START_TIME), TO_TIMESTAMP(STOPTIME)) as TRIP_DURATION
    from {{source('demo', 'BIKES')}}
   
)
SELECT * FROM trips