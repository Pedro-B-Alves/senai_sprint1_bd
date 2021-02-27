CREATE DATABASE Optus;

USE Optus;

CREATE TABLE Usuarios
(
	idUsuario		INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR(150) NOT NULL
	,Email			VARCHAR(150) NOT NULL
	,Senha			VARCHAR(150) NOT NULL
	,Permissao		VARCHAR(150) NOT NULL
);

CREATE TABLE Artistas
(
	idArtista	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(150) NOT NULL
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
	,DataLancamento			VARCHAR(150) NOT NULL
	,Localizacao			VARCHAR(150) NOT NULL
	,QtdMinutos				VARCHAR(150) NOT NULL
	,Ativo					VARCHAR(150) NOT NULL
	,idArtista				INT FOREIGN KEY REFERENCES Artistas (idArtista)
);

CREATE TABLE AlbunsEstilos
(
	idAlbum			INT FOREIGN KEY REFERENCES Albuns (idAlbum)
	,idEstilo		INT FOREIGN KEY REFERENCES Estilos (idEstilo)
);
