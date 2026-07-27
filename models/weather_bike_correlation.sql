WITH CTE AS (

    SELECT
        T.*,
        W.*
    FROM {{ref('trip_fact')}} T
    LEFT JOIN {{ref('daily_weather')}} W ON T.TRIP_DATE = W.DATE_WEATHER
    limit 10
)
SELECT
*
FROM CTE