SELECT * FROM pizza_legal.pizza
INNER JOIN pizza_legal.categoria ON pizza.fk_idcategoria = categoria.idcategoria;