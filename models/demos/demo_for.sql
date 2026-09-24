{% set customer_columns = [
    'CUSTOMER_ID',
    'CUSTOMER_NAME',
    'EMAIL',
    'CITY',
    'STATE'
] %}

SELECT

{% for column in customer_columns %}
    {{ column }}{% if not loop.last %},{% endif %}
{% endfor %}

FROM {{ ref('stg_customers') }}