USE SENAI_HROADS_MANHA;

INSERT INTO TipoDeHabilidade (Tipo)
VALUES ('Ataque'),('Defesa'),('Cura'),('Magia');

INSERT INTO Habilidade (Habilidade, idTipoHab)
VALUES ('Lança Mortal','1'),('Escudo Supremo','2'),('Recuperar Vida','3');

INSERT INTO Classe (Classe, idHab, idHab2)
VALUES ('Bárbaro','1','2');
INSERT INTO Classe (Classe, idHab)
VALUES ('Cruzado','2'),('Caçadora de Demônios','1');
INSERT INTO Classe (Classe, idHab, idHab2)
VALUES ('Monge','3','2');
INSERT INTO Classe (Classe)
VALUES ('Necromante');
INSERT INTO Classe (Classe, idHab)
VALUES ('Feiticeiro','3');
INSERT INTO Classe (Classe)
VALUES('Arcanista');

INSERT INTO Personagem (Nome, CapVida, CapMana, DataAtualizacao, DataCriacao, idClasse)
VALUES ('DeuBug','100','80','01/03/2021','18/01/2019','1'),('BitBug','70','100','01/03/2021','17/03/2016','4'),('Fer8','75','60','01/03/2021','18/03/2018','7');

--Atualizar o nome do personagem Fer8 para Fer7; 
UPDATE Personagem
SET Nome = 'Fer7'
WHERE idPersonagem = 3;

--Atualizar o nome da classe de Necromante para Necromancer; 
UPDATE Classe
SET Classe = 'Necromancer'
WHERE idClasse = 5;