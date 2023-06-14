with

    payments as (
        select * from `dbt-tutorial`.stripe.payment 
    ),

    qryFinal as 
    (
        select
            orderid as payment_order_id,
            amount as payment_amount
        from payments
    )

select * from qryFinal
