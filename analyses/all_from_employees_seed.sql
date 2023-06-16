with
    employees as (
        select * from {{ ref('employees') }}
    )

select * from employees
