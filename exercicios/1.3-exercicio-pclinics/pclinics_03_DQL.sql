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

SELECT VE.Nome AS [Veterinários], PE.Nome AS [Nome Dos Pets], RA.Descricao AS Raças, TI.Descricao AS Tipos, DO.Nome AS Donos, CL.RazaoSocial AS [Clínicas] FROM Atendimentos ATE
LEFT JOIN Veterinarios VE
ON ATE.idVeterinario = VE.idVeterinario
LEFT JOIN Pets PE
ON ATE.idPet = PE.idPet
LEFT JOIN Racas RA
ON PE.idRaca = RA.idRaca
LEFT JOIN TiposPets TI
ON RA.idTipoPet = TI.idTipoPet
INNER JOIN Donos DO
ON PE.idDono = DO.idDono
INNER JOIN Clinicas CL
ON VE.idClinica = CL.idClinica;
