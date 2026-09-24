{% snapshot customers_snapshot %}

{{
    config(
        target_schema='SNAPSHOTS',
        unique_key='CUSTOMER_ID',
        strategy='check',
        check_cols=[
            'CUSTOMER_NAME',
            'EMAIL',
            'CITY',
            'STATE'
        ]
    )
}}

SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    EMAIL,
    CITY,
    STATE
FROM {{ source('raw', 'CUSTOMERS') }}

{% endsnapshot %}