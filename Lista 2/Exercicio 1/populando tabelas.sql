INSERT INTO game_online.classes (cargo, ataque, defesa)
VALUES
("Mago",1200,900),
("Arqueiro",800,2000),
("Guerreiro",3000,1200),
("Assassino",3500,1000),
("Bárbaro",4000,2000);

INSERT INTO game_online.personagens (nome, genero, hp, ataque, defesa, fk_idclasse)
VALUES
("Chiao", "Masculino", 800, 400, 200, 1),
("Nina", "Feminino", 800, 500, 200, 1),
("Toby", "Masculino", 800, 200, 300, 2),
("Bella", "Feminino", 800, 300, 300, 2),
("Millo", "Masculino", 800, 500, 400, 3),
("Lua", "Feminino", 800, 500, 400, 3),
("Judith", "Feminino", 800, 700, 100, 4),
("Simba", "Masculino", 800, 700, 300, 5);

