USE Clinicas;

SELECT Nome, CRMV, RazaoSocial AS [Razão Social] FROM Clinicas CL
RIGHT JOIN Veterinarios VE
ON CL.idClinica = VE.idClinica;

SELECT Descricao AS [Raças] FROM Racas
WHERE Descricao LIKE 'S%'; 

SELECT Descricao AS [Tipos De Pet] FROM TiposPets
WHERE Descricao LIKE '[^]%o';

SELECT PE.Nome AS Pets, DO.Nome AS Donos FROM Pets PE
LEFT JOIN Donos DO
ON PE.idDono = DO.idDono;

