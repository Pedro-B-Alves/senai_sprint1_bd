CREATE DATABASE Optus;

USE Optus;

CREATE TABLE TiposDePermicoes
(
	idTipoDePermicao	INT PRIMARY KEY IDENTITY
	,Tipo				VARCHAR(150) NOT NULL
);

CREATE TABLE Usuarios
(
	idUsuario			INT PRIMARY KEY IDENTITY
	,Nome				VARCHAR(150) NOT NULL
	,Email				VARCHAR(150) NOT NULL
	,Senha				VARCHAR(150) NOT NULL
	,idTipoDePermicao INT FOREIGN KEY REFERENCES TiposDePermicoes (idTipoDePermicao)
);

CREATE TABLE Plataformas
(
	idPlataforma	INT PRIMARY KEY IDENTITY
	,idUsuario		INT FOREIGN KEY REFERENCES Usuarios (idUsuario)
);

CREATE TABLE Estilos
(
	idEstilo			INT PRIMARY KEY IDENTITY
	,Nome				VARCHAR(150) NOT NULL
);

CREATE TABLE Albuns
(
	idAlbum					INT PRIMARY KEY IDENTITY
	,Titulo					VARCHAR(150) NOT NULL
	,DataDeLancamento		VARCHAR(150) NOT NULL
	,Localizacao			VARCHAR(150) NOT NULL
	,QuantidadeMinutos		VARCHAR(150) NOT NULL
	,Disponivel				VARCHAR(150) NOT NULL
	,Artista				VARCHAR(150) NOT NULL
	,idPlataforma			INT FOREIGN KEY REFERENCES Plataformas (idPlataforma)
	,idEstilo				INT FOREIGN KEY REFERENCES Estilos (idEstilo)
);

CREATE TABLE Lancamentos
(
	idLancamento	INT PRIMARY KEY IDENTITY
	,idAlbum		INT FOREIGN KEY REFERENCES Albuns (idAlbum)
);

CREATE TABLE Empresas
(
	idEmpresa		INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR(150) NOT NULL
	,idLancamento	INT FOREIGN KEY REFERENCES Lancamentos (idLancamento)
);