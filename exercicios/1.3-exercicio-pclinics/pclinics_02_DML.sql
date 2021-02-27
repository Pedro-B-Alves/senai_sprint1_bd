USE Clinicas;

INSERT INTO Donos (Nome)
VALUES ('Paulo'),('Odirlei');

INSERT INTO TiposPets (Descricao)
VALUES ('Cachorro'),('Gato');

INSERT INTO Racas (Descricao,idTipoPet)
VALUES ('Poodle','1'),('Labrador','1'),('SRD','1'),('Siamês','2');

INSERT INTO Pets (Nome,DataNascimento,idRaca,idDono)
VALUES ('Junior','10/10/2018','1','1'),('Loli','18/05/2017','4','1'),('Sammy','16/06/2016','1','2');

INSERT INTO Clinicas (RazaoSocial,CNPJ,Endereco)
VALUES ('Meu Pimpão','99999999999999','Av. Barão de Limeira, 539');

INSERT INTO Veterinarios (Nome,CRMV,idClinica)
VALUES ('Saulo','432551','1'),('Caique','653655','1');

INSERT INTO Atendimentos (Descricao,DataAtendimento,idVeterinario,idPet)
VALUES ('Restam 10 dias de vida','22/01/2019','1','1'),('O paciente está ok','21/01/2019','2','2'),('O paciente está ok','22/01/2019','2','1');