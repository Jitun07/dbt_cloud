{{

    config(
        materialized = 'table'
    )
}}



WITH orders_data AS (

    SELECT
        order_id,
        customer_id,
        order_date,
        status,
        total_amount,
        payment_method

    FROM DBT_DB.DBT_SCH.ORDERS

),

cleaned_orders AS (

    SELECT

        order_id,

        customer_id,

        order_date,

        UPPER(status) AS order_status,

        total_amount,

        payment_method,

        CASE
            WHEN total_amount >= 30000 THEN 'HIGH'
            WHEN total_amount >= 10000 THEN 'MEDIUM'
            ELSE 'LOW'
        END AS order_category,

        CASE
            WHEN status = 'Delivered' THEN 1
            ELSE 0
        END AS delivered_flag,

        CURRENT_TIMESTAMP AS loaded_at

    FROM orders_data

)

SELECT *
FROM cleaned_orders