USE SENAI_HROADS_MANHA;

--Selecionar todos os personagens; 
SELECT Nome AS Personagem
FROM Personagem;

--Selecionar todos as classes; 
SELECT Classe, Habilidade AS [Habilidade Primária], Habilidade AS [Habilidade Secundária] FROM Habilidade
RIGHT JOIN Classe
ON (Classe.idHab = Habilidade.idHab) OR (Classe.idHab2 = Habilidade.idHab);

--Selecionar somente o nome das classes; 
SELECT Classe
FROM Classe;

--Selecionar todas as habilidades;
SELECT Habilidade
FROM Habilidade;

-- Selecionar somente os id’s das habilidades classificando-os por ordem crescente;
SELECT idHab AS [Id's Das Habilidades]
FROM Habilidade;

--Selecionar todos os tipos de habilidades;
SELECT Tipo AS [Tipo De Habilidade]
FROM TipoDeHabilidade;

--Selecionar todas as habilidades e a quais tipos de habilidades elas fazem parte; 
SELECT Habilidade, Tipo FROM TipoDeHabilidade
RIGHT JOIN Habilidade
ON Habilidade.idTipoHab = TipoDeHabilidade.idTipoHab;

--Selecionar todos os personagens e suas respectivas classes; 
SELECT Nome AS Personagem, Classe FROM Classe
RIGHT JOIN Personagem
ON Personagem.idClasse = Classe.idClasse;

--Selecionar todos os personagens e as classes (mesmo que elas não tenham correspondência em personagens); 
SELECT Nome AS Personagem, Classe FROM Classe
LEFT JOIN Personagem
ON Personagem.idClasse = Classe.idClasse;

--Selecionar todas as classes e suas respectivas habilidades; 
SELECT Classe, Habilidade FROM Habilidade
RIGHT JOIN Classe
ON (Classe.idHab = Habilidade.idHab) OR (Classe.idHab2 = Habilidade.idHab);

--Selecionar todas as habilidades e suas classes (somente as que possuem correspondência);
SELECT Classe, Habilidade FROM Habilidade
LEFT JOIN Classe
ON (Classe.idHab = Habilidade.idHab) OR (Classe.idHab2 = Habilidade.idHab);

--Selecionar todas as habilidades e suas classes (mesmo que elas não tenham correspondência). 
SELECT Classe, Habilidade FROM Habilidade
RIGHT JOIN Classe
ON (Classe.idHab = Habilidade.idHab) OR (Classe.idHab2 = Habilidade.idHab);
