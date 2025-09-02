CREATE DATABASE loja_online;
USE loja_online;

CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE Produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- Inserir dados
INSERT INTO Clientes (nome, email) VALUES
('Ana Silva', 'ana@email.com'),
('Bruno Costa', 'bruno@email.com'),
('Carla Pereira', 'carla@email.com'),
('Diego Souza', 'diego@email.com');

INSERT INTO Produtos (nome, preco) VALUES
('Camiseta', 49.90),
('Tênis', 199.90),
('Livro', 39.90),
('Mochila', 79.90),
('Relógio', 149.90);

INSERT INTO Pedidos (id_cliente, data_pedido) VALUES
(1, '2025-09-01'),
(2, '2025-09-02'),
(3, '2025-09-03');
