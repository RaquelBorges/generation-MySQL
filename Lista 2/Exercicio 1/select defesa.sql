SELECT personagens.nome, personagens.defesa + classes.defesa AS defesaTotal
FROM game_online.personagens
INNER JOIN classes ON personagens.fk_idclasse = classes.idclasse
WHERE personagens.defesa + classes.defesa BETWEEN 1000 AND 2000;