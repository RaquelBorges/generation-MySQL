INSERT INTO cidade_carnes.categoria (tipo, classificacao, origem)
VALUES
("In Natura", "primeira", "bovina"),
("In Natura", "segunda", "bovina"),
("In Natura", "primeira", "suína"),
("In Natura", "não se aplica", "aves"),
("Industrializado", "não se aplica", "misto");

INSERT INTO cidade_carnes.produto (nome,preco,corte,indicacao,fk_idCategoria)
VALUES
("Filé Mignon", 70.00, "Em bifes", "Para Grelhar", 1),
("Patinho", 35.00, "Moída", "Para refogados", 1),
("Acem", 25.00, "Em cubos", "Para Cozidos", 2),
("Picanha Suína", 49.00, "Peça inteira", "Para Assar", 3),
("Costela Suíno", 39.00, "Peça Inteira", "Para Grelhar ou Assar", 3),
("Filé de peito de frango", 17.00, "Em bifes", "Para Grelhar", 4),
("Coxa e sobrecoxa de frango ", 13.00, "Peça inteira", "Para Assar", 4),
("Salsicha", 8.00, "Peça inteira", "Para Lanches", 5);


