SELECT * FROM cidade_carnes.produto
INNER JOIN categoria ON categoria.idCategoria = produto.fk_idCategoria;
