with
    customers as (
        select * from {{ ref('stg_customers') }}
    ),

    qryFinal as 
    (
        select 
            last_name
        from customers
        where
            last_name != upper(last_name)
    )

select * from qryFinal
