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

SELECT *

FROM silver.pizza_query.pedido

WHERE descUF = "Paraná"

-- COMMAND ----------


