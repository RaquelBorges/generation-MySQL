SELECT * FROM farmacia_dobem.produtos
INNER JOIN farmacia_dobem.categoria ON categoria.idCategoria = produtos.fk_idCategoria
WHERE categoria.tipo = "Analgésico";