-- 01 Mostre o faturamento por loja.

SELECT nome_loja 
	AS LOJA,
SUM(valor_total) 
	AS FATURAMENTO
FROM fato_vendas a
INNER JOIN dim_loja b 
ON  a.id_loja = B.id_loja
GROUP BY nome_loja 
