with orders as (
    select * from {{ ref('stg_orders') }}
),

payments as (
    select * from {{ ref('stg_payments') }}
)

select o.ORDER_ID, o.CUSTOMER_ID, p.AMOUNT from orders o
left join payments p on p.ORDERID = o.ORDER_ID
;