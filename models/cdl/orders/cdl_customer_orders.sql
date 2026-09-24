SELECT
    o.ORDER_ID,
    o.ORDER_DATE,
    o.CUSTOMER_ID,
    c.CUSTOMER_NAME,
    c.EMAIL,
    c.CITY,
    c.STATE,
    o.PRODUCT_NAME,
    o.CATEGORY,
    o.QUANTITY,
    o.UNIT_PRICE,
    o.ORDER_AMOUNT,
    o.ORDER_STATUS,
    o.PAYMENT_METHOD,
    p.PAYMENT_GROUP

FROM {{ ref('stg_orders') }} o

LEFT JOIN {{ ref('stg_customers') }} c
    ON o.CUSTOMER_ID = c.CUSTOMER_ID

LEFT JOIN {{ ref('payment_method_mapping') }} p
    ON o.PAYMENT_METHOD = p.PAYMENT_METHOD