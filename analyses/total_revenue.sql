with
    payments as (
        select * from {{ ref('stg_payments') }}
    ),

    qryFinal as 
    (
        select sum(payment_amount) from payments
    )

select * from qryFinal
