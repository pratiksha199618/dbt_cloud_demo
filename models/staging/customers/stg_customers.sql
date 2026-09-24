SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    EMAIL,
    CITY,
    STATE

FROM {{ source('raw', 'CUSTOMERS') }}