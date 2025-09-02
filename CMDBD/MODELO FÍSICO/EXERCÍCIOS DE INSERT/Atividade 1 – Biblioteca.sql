-- Criar banco de dados
CREATE DATABASE biblioteca;
USE biblioteca;

-- Criar tabela Autores
CREATE TABLE Autores (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50) NOT NULL
);

-- Criar tabela Livros
CREATE TABLE Livros (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    ano_publicacao INT NOT NULL,
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES Autores(id_autor)
);

-- Criar tabela Usuarios
CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Inserir autores
INSERT INTO Autores (nome, nacionalidade) VALUES
('Machado de Assis', 'Brasileiro'),
('J.K. Rowling', 'Britânica'),
('George Orwell', 'Britânico');

-- Inserir livros
INSERT INTO Livros (titulo, ano_publicacao, id_autor) VALUES
('Dom Casmurro', 1899, 1),
('Memórias Póstumas de Brás Cubas', 1881, 1),
('Harry Potter e a Pedra Filosofal', 1997, 2),
('Harry Potter e a Câmara Secreta', 1998, 2),
('1984', 1949, 3);

-- Inserir usuários
INSERT INTO Usuarios (nome, email) VALUES
('Ana Silva', 'ana@email.com'),
('Bruno Costa', 'bruno@email.com'),
('Carla Pereira', 'carla@email.com'),
('Diego Souza', 'diego@email.com');
