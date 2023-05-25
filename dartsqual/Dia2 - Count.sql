-- Databricks notebook source
SELECT  count(*),       -- linhas não nulas
        count(1),       -- linhas não nulas tbm
        count(idPedido) -- linhas que tem idPedido
FROM silver.pizza_query.pedido

-- COMMAND ----------

SELECT count(*)

FROM silver.pizza_query.pedido

WHERE flKetchup IS NOT NULL

-- COMMAND ----------

SELECT descUF,
        count(*) AS qtdePedidos

FROM silver.pizza_query.pedido

WHERE descUF != 'São Paulo' -- Pode usar Not Like mas a performance é menor

GROUP BY descUF
ORDER BY qtdePedidos DESC 

LIMIT 6

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.produto
WHERE descItem LIKE 'tofu'

-- COMMAND ----------

-- Usando Having para filtrar por quantidade de pedidos
SELECT descUF,
        count(*) AS qtdePedidos

FROM silver.pizza_query.pedido

WHERE descUF != 'São Paulo'

GROUP BY descUF
HAVING qtdePedidos >= 75

ORDER BY qtdePedidos DESC 

LIMIT 6

-- COMMAND ----------

SELECT descUF,
       flKetchup,
       count(*)
FROM silver.pizza_query.pedido

GROUP BY descUF, flKetchup
ORDER BY descUF, flKetchup


-- COMMAND ----------

