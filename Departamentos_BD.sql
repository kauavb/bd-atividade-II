-- CRIAR BANCO DE DADOS
CREATE DATABASE Empresa;

-- SELECIONAR O BANCO
USE Empresa;

-- CRIAR TABELA NO BANCO
CREATE TABLE Departamentos(
	Id int auto_increment primary key,
    NomeDoDepartamento varchar(50) not null
);
CREATE TABLE Funcionarios(
	id int auto_increment primary key,
    Nome varchar(255) not null,
	Cargo varchar(50) not null,
    Salario double not null,
    Id_Departamentos int,
    foreign key(Id_Departamentos) references Departamentos(Id)
);

-- INSERIR VALORES NA TABELA DE DEPARTAMENTOS
INSERT INTO Empresa.Departamentos(NomeDoDepartamento)
VALUES ('Portaria');
INSERT INTO Empresa.Departamentos(NomeDoDepartamento)
VALUES ('Transporte');
INSERT INTO Empresa.Departamentos(NomeDoDepartamento)
VALUES ('Empresarial');
INSERT INTO Empresa.Departamentos(NomeDoDepartamento)
VALUES ('RH');
INSERT INTO Empresa.Departamentos(NomeDoDepartamento)
VALUES ('Nucleo de Tecnologia');

-- INSERIR VALORES NA TABELA DE FUNCIONARIOS
INSERT INTO Empresa.Funcionarios(Nome, Cargo, Salario, Id_Departamentos)
VALUES('João Victor', 'Analista', 8500.00, 3),
('Leticia Gabriel', 'HELPDESK', 4000, 5),
('Gabriela Silva', 'Gerenciadora do RH', 7000, 4),
('Valmir Santos', 'Motorista', 9600.70, 2),
('Viviane Valente', 'Porteiro', 4123.48, 1);

-- SELECIONAR E MOSTRAR INFORMAÇÕES DA TABELA
SELECT * FROM Empresa.Departamentos;

SELECT * FROM Empresa.Funcionarios;