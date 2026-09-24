SELECT
    ORDER_ID,
    ORDER_AMOUNT
FROM {{ ref('stg_orders') }}
WHERE ORDER_AMOUNT < 0