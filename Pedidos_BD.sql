-- Criando um banco de dados
CREATE DATABASE Pedidos;

-- Mostrar o banco de dados
SHOW DATABASES;

-- Acessando o banco de dados
USE Pedidos;

-- Tabela "Clientes":
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Email VARCHAR(255),
    Telefone VARCHAR(20)
);

-- Inserir 5 registros na tabela "Clientes"
INSERT INTO Clientes (ClienteID, Nome, Email, Telefone)
VALUES
    (1, 'João victor', 'joao@yahoo.com', '(84) 5659-5453'),
    (2, 'Edu Lima', 'maria@outlook.com', '(54) 9656-8526'),
    (3, 'Leticia Andrade', 'pedro@hotmail.com', '(41) 0545-1480'),
    (4, 'Pedro Lima', 'ana@senai.com', '(24) 1547-6318'),
    (5, 'Luiza Bispo', 'lulu@gmail.com', '(71) 1648-6561');

-- Tabela "Pedidos":
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    ValorTotal VARCHAR (50),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Inserir 5 registros na tabela "Pedidos"
INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, ValorTotal)
VALUES
	(1, 1, '2023-09-01', '548.00'),
    (2, 2, '2023-09-02', '89.50'),
    (3, 3, '2023-09-03', '368.75'),
    (4, 4, '2023-09-04', '15.00'),
    (5, 5, '2023-09-05', '864.75');
    
-- Mostrar registros da tabela
SELECT * FROM Pedidos;

-- Mostrar registros da tabela Clientes
SELECT * FROM Clientes;