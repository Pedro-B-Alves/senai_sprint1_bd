USE Locadora;

INSERT INTO Empresas (Nome)
VALUES ('Unidas'),('Localiza');

INSERT INTO Marcas (Nome)
VALUES ('Ford'),('GM'),('Fiat');

INSERT INTO Modelos (Descricao, idMarca)
VALUES ('Fiesta','1'),('Onix','2'),('Argo','3');

INSERT INTO Clientes (Nome, CPF)
VALUES ('Saulo','99999999999'),('Caique','88888888888');

INSERT INTO Alugueis (idCliente, DataInicio, DataFim)
VALUES ('1','19/01/2019','20/01/2019'),('1','20/01/2019','21/01/2019'),('2','21/01/2019','21/01/2019'),('2','22/01/2019','22/01/2019');

INSERT INTO Veiculos (idMarca,Placa,idEmpresa,idAluguel)
VALUES ('1','HEL1805','1','1'),('2','FER1010','1','2'),('3','POR1978','2','3'),('1','LEM9876','2','4');