create schema clinicaagendamento;

set search_path to clinicaagendamento;
show search_path;

create table if not exists endereco(
	idEndereco SERIAL PRIMARY KEY,
	estado CHAR(100) NULL,
	cidade CHAR(100) NULL,
	rua CHAR(100) NULL,
	cep CHAR(08) NULL,
	numero CHAR(10) NULL,
	complemento VARCHAR(100) NULL
);

alter table endereco 
alter column cep TYPE char(20);

create table if not exists pessoa (
	idPessoa SERIAL PRIMARY KEY,
	nome CHAR(255) NOT NULL,
	dataNasc DATE NULL,
	cpf CHAR(11) UNIQUE,
	idEndereco INTEGER REFERENCES ENDERECO (idEndereco) NULL,
	telefone VARCHAR(15) NOT NULL,
	email VARCHAR(100) null
);

create table if not exists medico(
	idMedico SERIAL PRIMARY KEY,
	crm CHAR(12) UNIQUE,
	idPessoa INTEGER REFERENCES PESSOA(idPessoa) NOT NULL,
	especialidade VARCHAR NOT NULL
);

create table if not exists paciente(
	idPaciente SERIAL PRIMARY KEY,
	tpSanguineo CHAR(2) NOT NULL,
	idPessoa INTEGER REFERENCES PESSOA(idPessoa) NOT NULL,
	sexoBiologico CHAR(1) NULL,
	alergico BOOLEAN NOT NULL
);

alter table paciente 
alter column tpSanguineo type CHAR(5);

create table if not exists remedio(
	idRemedio SERIAL PRIMARY KEY,
	nome CHAR(50) NULL,
	composicao VARCHAR(100) NOT NULL,
	validade DATE NOT NULL
);

create table if not exists cadastroAlergia(
	idCadastroAlergico SERIAL PRIMARY KEY,
	nomeAlergia VARCHAR(50) NOT NULL,
	idRemedio INTEGER REFERENCES REMEDIO(idRemedio) NOT NULL
);

create table if not exists pacienteAlergia(
	idPacienteAlergia SERIAL PRIMARY KEY,
	idPaciente INTEGER REFERENCES PACIENTE(idPaciente) NOT NULL,
	idCadastroAlergico INTEGER REFERENCES cadastroAlergia(idCadastroAlergico) NOT NULL
);

create table if not exists remediosReceita(
	idRemediosReceita SERIAL PRIMARY KEY NOT NULL,
	idRemedio INTEGER REFERENCES REMEDIO(idRemedio) NOT NULL,
	idReceita INTEGER REFERENCES RECEITA(idReceita) NOT NULL
);

create table if not exists receita(
	idReceita SERIAL PRIMARY KEY,
	qtdDiasAtestado smallint NOT NULL,
	codigoValidador INTEGER NOT NULL
);

create table if not exists consulta(
	idConsulta SERIAL PRIMARY KEY,
	diagnostico VARCHAR(300) NOT NULL,
	idPaciente INTEGER REFERENCES PACIENTE(idPaciente) NOT NULL,
	idMedico INTEGER REFERENCES MEDICO(idMedico) NOT NULL,
	idReceita INTEGER REFERENCES RECEITA(idReceita) NOT NULL,
	dataConsulta DATE NOT NULL
);