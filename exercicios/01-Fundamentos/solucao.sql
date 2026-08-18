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

-- Exercício 06 - Qual o ticket médio das vendas?

SELECT  avg(valor_total) AS TICKET_MEDIO
FROM fato_vendas

-- Exercício 07 - Liste todas as lojas cadastradas.

SELECT nome_loja as LOJAS
FROM dim_loja

-- Exercício 08 - Liste todos os funcionários e seus cargos.

SELECT nome_funcionario, cargo 
FROM dim_funcionario