{% set flag = 1%}

SELECT * FROM {{ ref('bronze_bookings') }}
{% if flag == 1 %}
    WHERE NIGHTS_BOOKED > 1
{% else %}
W   HERE NIGHTS_BOOKED = 1
{% endif %}