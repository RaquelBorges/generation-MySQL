INSERT INTO pizza_legal.categoria (tipoSabor, tamanho)
VALUES
("Salgada", "P"),
("Salgada", "M"),
("Salgada", "G"),
("Doce", "P"),
("Doce", "M");

INSERT INTO pizza_legal.pizza (sabor, borda, ingredientes, valor, fk_idcategoria)
VALUES
("Mussarela", "Catupiry", "Queijo mussarela, azeite, oregano e azeitonas", 50.00, 1),
("Mussarela", "Catupiry", "Queijo mussarela, azeite, oregano e azeitonas", 35.00, 2 ),
("Broto de Mussarela", "Catupiry", "Queijo mussarela, azeite, oregano e azeitonas", 25.00, 3 ),
("Calabresa", "Cheddar", "Calabresa moída, cebolas fatiadas, azeite, e azeitonas", 60.00, 1 ),
("Broto de Calabresa", "Cheddar", "Calabresa moída, cebolas fatiadas, azeite, e azeitonas", 25.00, 3),
("Doce de leite com banana", "Sem borda recheada", "Doce de leite artesanal com rodelas de banana", 35.00, 4 ),
("Chocolate com morango", "Sem borda recheada", "Chocolate meio amargo com morangos silvestres", 55.00, 5);

