SELECT * FROM game_online.personagens
INNER JOIN classes ON personagens.fk_idclasse = classes.idclasse
WHERE classes.cargo = "arqueiro"