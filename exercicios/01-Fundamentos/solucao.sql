-- Exercício 01 - Liste todos os clientes cadastrados na tabela dim_cliente

SELECT nome_cliente
FROM  dim_cliente;

-- Exercício 02 - Liste apenas os nomes e categorias dos produtos

SELECT nome_produto, categoria
  FROM dim_produto;

-- Exercício 03  Quantos clientes existem na base
SELECT count(*)
  FROM dim_cliente;

-- Exercício 04  Quantos produtos existem cadastrados ?

SELECT COUNT(nome_produto) AS TOTAL_PRODUTOS
FROM dim_produto

-- Exercício 05 - Qual o valor total de faturamento da empresa?

SELECT ROUND(SUM(valor_total),2)AS FATURAMENTO_TOTAL
FROM  fato_vendas;
