select count(*) as num_orders_today
from {{ref('stg_orders')}}
where DATE(order_date) = CURRENT_DATE()
having count(*) >0