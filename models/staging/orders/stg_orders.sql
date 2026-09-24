SELECT
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    PRODUCT_NAME,
    CATEGORY,
    QUANTITY,
    UNIT_PRICE,

    {{ calculate_order_amount('QUANTITY', 'UNIT_PRICE') }} AS ORDER_AMOUNT,

    ORDER_STATUS,
    PAYMENT_METHOD,
    CITY

FROM {{ source('raw', 'ORDERS') }}