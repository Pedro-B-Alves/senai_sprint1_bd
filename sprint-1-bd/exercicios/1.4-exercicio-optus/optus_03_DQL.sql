USE Optus;

SELECT Nome AS [Usu�rios Administradores] FROM Usuarios
WHERE Permissao LIKE 'Administrador';

SELECT Titulo FROM Albuns
WHERE DataLancamento > 2000;

SELECT idUsuario [ID Do Usu�rio], Nome, Permissao [Permiss�o] FROM Usuarios
WHERE (Email = 's.santos@email.com') AND (Senha = '123456');

SELECT idUsuario [ID Do Usu�rio], Nome, Permissao [Permiss�o] FROM Usuarios
WHERE (Email = 'c.zaneti@email.com') AND (Senha = '123456');

SELECT AL.Titulo [�lbum], AR.Nome Artista, ES.Nome Estilo FROM Albuns AL
INNER JOIN Artistas AR
ON AL.idArtista = AR.idArtista
INNER JOIN AlbunsEstilos AE
ON AL.idAlbum = AE.idAlbum
INNER JOIN Estilos ES
ON AE.idEstilo = ES.idEstilo
WHERE AL.Ativo = 1;