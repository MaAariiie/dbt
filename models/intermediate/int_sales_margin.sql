SELECT 
products_id,
date_date,
orders_id,
revenue,
quantity,
purchase_price,
quantity * purchase_price AS purchase_cost

FROM 
{{ref("stg_raw__sales")}}
JOIN
{{ref("stg_raw__product")}}
USING (products_id)