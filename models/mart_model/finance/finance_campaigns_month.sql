SELECT *,
DATE_FORMAT(date_date,‘YYYY-MM’) AS date_month
FROM {{ref("finance_campaigns_day")}}