{% macro create_margin_percent(revenue,purchase_cost)%}
create_margin_percent = ROUND(SAFE_DIVIDE((revenue-purchase_cost)/revenue),2)
{%endmacro%}