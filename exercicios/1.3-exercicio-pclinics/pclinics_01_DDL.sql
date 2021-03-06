CREATE DATABASE Clinicas;

USE Clinicas;

CREATE TABLE Donos
(
	idDono	INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR(150) NOT NULL
);

CREATE TABLE TiposPets
(
	idTipoPet	INT PRIMARY KEY IDENTITY
	,Descricao	VARCHAR(150) NOT NULL
);

CREATE TABLE Racas
(
	idRaca		INT PRIMARY KEY IDENTITY
	,Descricao	VARCHAR(150) NOT NULL
	,idTipoPet	INT FOREIGN KEY REFERENCES TiposPets (idTipoPet)
);

CREATE TABLE Pets
(
	idPet				INT PRIMARY KEY IDENTITY
	,Nome				VARCHAR(150) NOT NULL
	,DataNascimento		VARCHAR(150) NOT NULL
	,idRaca				INT FOREIGN KEY REFERENCES Racas (idRaca)
	,idDono				INT FOREIGN KEY REFERENCES Donos (idDono)
);

CREATE TABLE Clinicas
(
	idClinica		INT PRIMARY KEY IDENTITY
	,RazaoSocial	VARCHAR(150) NOT NULL
	,CNPJ			VARCHAR(150) NOT NULL
	,Endereco		VARCHAR(150) NOT NULL
	
);

CREATE TABLE Veterinarios
(
	idVeterinario	INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR(150) NOT NULL
	,CRMV			VARCHAR(150) NOT NULL
	,idClinica		INT FOREIGN KEY REFERENCES Clinicas (idClinica)
);

CREATE TABLE Atendimentos
(
	idAtendimento		INT PRIMARY KEY IDENTITY
	,Descricao			VARCHAR(150) NOT NULL
	,DataAtendimento	VARCHAR(150) NOT NULL
	,idVeterinario		INT FOREIGN KEY REFERENCES Veterinarios (idVeterinario)
	,idPet				INT FOREIGN KEY REFERENCES Pets (idPet)
);

