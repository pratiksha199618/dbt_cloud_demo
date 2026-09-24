SELECT
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    PRODUCT_NAME,
    ORDER_STATUS,
    ORDER_AMOUNT,
    '{{ target.name }}' AS DBT_TARGET

FROM {{ ref('stg_orders') }}

{% if target.name == 'dev' %}
WHERE ORDER_STATUS <> 'Cancelled'
{% endif %}