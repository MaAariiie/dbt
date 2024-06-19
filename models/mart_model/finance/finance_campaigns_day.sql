SELECT *
FROM {{ref("int_campaign_day")}}
FULL OUTER JOIN
{{ref("finance_days")}}
ON date_date
ORDER BY date_date