with
    payments as (
        select * from {{ ref('stg_payments') }}
    ),
    orders as (
        select * from {{ ref('stg_orders') }}
    ),

    qryFinal as 
    (
        select
            orders.order_id,
            orders.customer_id,
            payments.payment_amount
        from
            orders join
            payments on
                orders.order_id = payments.payment_order_id
    )

select * from qryFinal 
