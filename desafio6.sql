SELECT 
    MIN(p.plan_price) faturamento_minimo,
    MAX(p.plan_price) faturamento_maximo,
    ROUND(AVG(p.plan_price),2) faturamento_medio,
    ROUND(SUM(plan_price),2) faturamento_total
FROM plan AS p
INNER JOIN user AS u ON u.plan_id = p.plan_id ;