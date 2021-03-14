CREATE DATABASE SP_Medical_Group;
GO

USE SP_Medical_Group;
GO

CREATE TABLE tipoUsuario
(
	idTipoUsuario	INT PRIMARY KEY IDENTITY
	,tipo			VARCHAR(150) UNIQUE NOT NULL
);
GO

CREATE TABLE usuario
(
	idUsuario		INT PRIMARY KEY IDENTITY
	,idTipoUsuario	INT FOREIGN KEY REFERENCES tipoUsuario(idTipoUsuario)
	,rg				VARCHAR(10) UNIQUE NOT NULL
	,cpf			VARCHAR(11) UNIQUE NOT NULL
	,endereco		VARCHAR(255) NOT NULL
	,telefone		VARCHAR(11) NOT NULL
	,email			VARCHAR(150) UNIQUE NOT NULL
	,senha			VARCHAR(150) NOT NULL
);
GO

CREATE TABLE administrador
(
	idAdministrador	INT PRIMARY KEY IDENTITY
	,idUsuario		INT FOREIGN KEY REFERENCES usuario(idUsuario)
	,nome			VARCHAR(150) NOT NULL
);
GO

CREATE TABLE clinica
(
	idClinica				INT PRIMARY KEY IDENTITY
	,endereco				VARCHAR(255) NOT NULL
	,horarioFuncionamento	VARCHAR(150) NOT NULL
	,cnpj					CHAR(14) UNIQUE NOT NULL
	,nomeFantasia			VARCHAR(150) NOT NULL
	,razaoSocial			VARCHAR(150) NOT NULL
);
GO

CREATE TABLE especialidade
(
	idEspecialidade	INT PRIMARY KEY IDENTITY
	,tipo			VARCHAR(200) NOT NULL
);
GO

CREATE TABLE medico
(
	idMedico			INT PRIMARY KEY IDENTITY
	,idClinica			INT FOREIGN KEY REFERENCES clinica(idClinica)
	,idEspecialidade	INT FOREIGN KEY REFERENCES especialidade(idEspecialidade)
	,idUsuario			INT FOREIGN KEY REFERENCES usuario(idUsuario)
	,nome				VARCHAR(150) NOT NULL
	,crm				VARCHAR(7) UNIQUE NOT NULL
);
GO

CREATE TABLE paciente
(
	idPaciente	INT PRIMARY KEY IDENTITY
	,idUsuario	INT FOREIGN KEY REFERENCES usuario(idUsuario)
	,nome		VARCHAR(150) NOT NULL
	,descricao	VARCHAR(255) NOT NULL
);
GO

CREATE TABLE consulta
(
	idConsulta			INT PRIMARY KEY IDENTITY
	,idPaciente			INT FOREIGN KEY REFERENCES paciente(idPaciente)
	,idMedico			INT FOREIGN KEY REFERENCES medico(idMedico)
	,dataAgendamento	VARCHAR(150) NOT NULL
	,situacao			VARCHAR(150) NOT NULL
);
GO