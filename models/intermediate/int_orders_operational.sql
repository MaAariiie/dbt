SELECT 
date_date,
orders_id,
SUM(revenue) AS revenue,
SUM(quantity)AS quantity,
SUM(purchase_price) AS purchase_price,
SUM(purchase_cost) AS purchase_cost,
SUM(margin) AS margin
FROM {{ref("int_orders_margin")}}
JOIN {{ref("stg_raw__ship")}}
USING (orders_id)
GROUP BY orders_id, date_date