USE SENAI_HROADS_MANHA;

INSERT INTO TipoDeHabilidade (Tipo)
VALUES ('Ataque'),('Defesa'),('Cura'),('Magia');

INSERT INTO Habilidade (Habilidade, idTipoHab)
VALUES ('Lança Mortal','1'),('Escudo Supremo','2'),('Recuperar Vida','3');

INSERT INTO Classe (Classe)
VALUES ('Bárbaro'),('Cruzado'),('Caçadora de Demônios'),('Monge'),('Necromante'),('Feiticeiro'),('Arcanista');

INSERT INTO ClasseHabilidade (idClasse, idHab)
VALUES ('1','1'),('1','2'),('2','2'),('3','1'),('4','3'),('4','2'),('6','3');

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