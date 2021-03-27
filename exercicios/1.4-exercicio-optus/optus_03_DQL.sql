USE Optus;

SELECT Nome AS [Usuários Administradores] FROM Usuarios
WHERE Permissao LIKE 'Administrador';

SELECT Titulo FROM Albuns
WHERE DataLancamento > 2000;

SELECT idUsuario [ID Do Usuário], Nome, Permissao [Permissão] FROM Usuarios
WHERE (Email = 's.santos@email.com') AND (Senha = '123456');

SELECT idUsuario [ID Do Usuário], Nome, Permissao [Permissão] FROM Usuarios
WHERE (Email = 'c.zaneti@email.com') AND (Senha = '123456');

SELECT AL.Titulo [Álbum], AR.Nome Artista, ES.Nome Estilo FROM Albuns AL
INNER JOIN Artistas AR
ON AL.idArtista = AR.idArtista
INNER JOIN AlbunsEstilos AE
ON AL.idAlbum = AE.idAlbum
INNER JOIN Estilos ES
ON AE.idEstilo = ES.idEstilo
WHERE AL.Ativo = 1;