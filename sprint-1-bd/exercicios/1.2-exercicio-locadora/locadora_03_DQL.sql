USE Locadora;

SELECT DataInicio AS [Data De Retirada], DataFim AS [Data De Devolução], Nome AS Cliente, Descricao AS Modelo
FROM Veiculos VC
INNER JOIN Modelos MD
ON VC.idModelo = MD.idModelo
INNER JOIN Alugueis AL
ON VC.idVeiculo = AL.idVeiculo
INNER JOIN Clientes CL
ON AL.idCliente = CL.idCliente;

--Lista os alugueis do cliente Saulo
SELECT DataInicio AS [Data De Retirada], DataFim AS [Data De Devolução], Nome AS Cliente, Descricao AS Modelo
FROM Veiculos VC
INNER JOIN Modelos MD
ON VC.idModelo = MD.idModelo
INNER JOIN Alugueis AL
ON VC.idVeiculo = AL.idVeiculo
INNER JOIN Clientes CL
ON AL.idCliente = CL.idCliente
WHERE Nome LIKE 'Saulo%';

--Lista os alugueis do cliente Caique
SELECT DataInicio AS [Data De Retirada], DataFim AS [Data De Devolução], Nome AS Cliente, Descricao AS Modelo
FROM Veiculos VC
INNER JOIN Modelos MD
ON VC.idModelo = MD.idModelo
INNER JOIN Alugueis AL
ON VC.idVeiculo = AL.idVeiculo
INNER JOIN Clientes CL
ON AL.idCliente = CL.idCliente
WHERE Nome LIKE 'Caique%';