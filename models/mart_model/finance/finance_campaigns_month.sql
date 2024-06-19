SELECT
DATE_TRUNC(date_date,month) AS date_month,
SUM(ads_margin) AS ads_margin,
SUM(average_basket) AS average_basket,
SUM(operational_margin) AS operational_margin,
SUM(ads_cost) AS ads_cost,
SUM(ads_impression) AS ads_impression

FROM {{ref("finance_campaigns_day")}}
GROUP BY date_month
