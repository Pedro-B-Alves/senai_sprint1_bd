USE Optus;

SELECT Nome AS [Usu�rios Administradores] FROM Usuarios
WHERE Permissao LIKE 'Administrador';

SELECT Titulo FROM Albuns
WHERE DataLancamento Like '';