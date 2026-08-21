-- 01 Mostre o faturamento por loja.

SELECT nome_loja 
	AS LOJA,
SUM(valor_total) 
	AS FATURAMENTO
FROM fato_vendas a
INNER JOIN dim_loja b 
ON  a.id_loja = B.id_loja
GROUP BY nome_loja 

-- 02 Mostre a quantidade de vendas por loja.
SELECT
    l.nome_loja,
    COUNT(v.id_venda)
FROM fato_vendas v
JOIN dim_loja l
ON v.id_loja=l.id_loja
GROUP BY l.nome_loja;