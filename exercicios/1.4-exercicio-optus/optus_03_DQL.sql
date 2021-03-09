USE Optus;

SELECT Nome AS [Usuários Administradores] FROM Usuarios
WHERE Permissao LIKE 'Administrador';

SELECT Titulo FROM Albuns
WHERE DataLancamento Like '';