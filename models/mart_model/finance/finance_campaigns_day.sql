WITH new_table AS (SELECT *
FROM {{ref("int_campaign_day")}} 
JOIN
{{ref("finance_days")}} 
USING (date_date))

SELECT *,
operational_margin-ads_cost AS ads_margin
FROM new_table
ORDER BY date_date DESC
