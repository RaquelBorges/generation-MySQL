SELECT personagens.nome, personagens.ataque + classes.ataque AS ataqueTotal
FROM game_online.personagens
INNER JOIN classes ON personagens.fk_idclasse = classes.idclasse
WHERE personagens.ataque + classes.ataque >= 2000;


