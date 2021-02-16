INSERT INTO farmacia_dobem.categoria (tipo, soComReceita, departamento)
VALUES
("Anti-gripal", "Não", "Remédios uso simples"),
("Anti-histaminico", "Não", "Remédios"),
("Anti-depressivos", "Sim", "Remédios Controlados"),
("Anti-hipertensivo", "Sim", "Remédios Uso continuo"),
("Analgésico", "Não", "Remédios uso comum");

INSERT INTO farmacia_dobem.produtos (nome, dosagem, preco, validade, fk_idCategoria)
VALUES
("Benegrip", "500 mg", 24.90, "2023-12-15", 1),
("Loratadina","10 mg", 6.99, "2022-08-12", 2),
("Trazodona","50 mg", 57.99, "2024-06-30", 3),
("Losartana","50 mg", 9.50, "2023-05-28", 4),
("Dorflex","500 mg", 4.99, "2022-04-18", 5),
("Buscopan","10 mg", 15.90, "2023-03-26", 5),
("Polaramine","2 mg", 19.90, "2023-01-10", 2),
("Coristina D","400 mg", 27.90, "2021-12-30", 1);
