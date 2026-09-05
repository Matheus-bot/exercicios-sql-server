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

-- 03 Mostre quantos funcionários existem em cada loja.

SELECT 
    l.nome_loja AS LOJA,
    COUNT(f.id_funcionario) AS FUNCIONARIOS
FROM dim_funcionario f
JOIN dim_loja l ON f.id_loja = l.id_loja
GROUP BY l.id_loja, l.nome_loja;

-- 04 Mostre o faturamento por categoria de produto.

SELECT p.categoria AS CATEGORIA,
	  ROUND(SUM(i.quantidade*i.preco_unitario),2) AS FATURAMENTO 
FROM dim_produto p
JOIN fato_itens_venda i ON p.id_produto = i.id_produto
GROUP BY p.categoria

-- 05 Mostre os 10 produtos mais vendidos em quantidade

SELECT TOP 10 nome_produto AS NOME_PRODUTO, 
        SUM(v.quantidade) AS QUANTIDADE
FROM fato_itens_venda v
JOIN dim_produto p 
  ON p.id_produto = v.id_produto
GROUP BY nome_produto 
ORDER BY quantidade DESC

-- 06 Mostre os 10 produtos que mais geraram receita.

SELECT TOP 10
	p.nome_produto,
	ROUND(SUM(i.quantidade * i.preco_unitario) , 2) RECEITA
FROM fato_itens_venda i
JOIN dim_produto p ON p.id_produto = i.id_produto
GROUP BY p.nome_produto
ORDER BY RECEITA desc