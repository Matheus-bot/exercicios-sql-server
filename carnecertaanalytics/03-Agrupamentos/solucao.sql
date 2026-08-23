-- 01 Mostre o ticket médio por loja. 

SELECT 
    f.id_loja,
    ROUND(SUM(f.valor_total) * 1.0 / COUNT(DISTINCT f.id_venda), 2) AS Ticket_medio
FROM fato_vendas f
GROUP BY f.id_loja
ORDER BY f.id_loja;
