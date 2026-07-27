{% macro get_station(x)%}

    CASE
        WHEN MONTH(TO_TIMESTAMP({{x}})) IN (12,1,2) THEN 'SUMMER'
        WHEN MONTH(TO_TIMESTAMP({{x}})) IN (3,4,5) THEN 'AUTUMN'
        WHEN MONTH(TO_TIMESTAMP({{x}})) IN (6,7,8) THEN 'WINTER'
        ELSE 'SPRING'
    END

{%endmacro%}

{% macro get_day_type(x)%}
    CASE
        WHEN UPPER(DAYNAME(TO_TIMESTAMP({{x}}))) IN ('SAT', 'SUN') THEN 'WEEKEND'
        ELSE 'BUSINESS'
    END
{%endmacro%}