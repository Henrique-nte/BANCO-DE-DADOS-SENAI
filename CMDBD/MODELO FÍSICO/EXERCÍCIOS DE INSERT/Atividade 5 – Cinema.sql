CREATE DATABASE cinema;
USE cinema;

CREATE TABLE Filmes (
    id_filme INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    duracao INT NOT NULL
);

CREATE TABLE Salas (
    id_sala INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL,
    capacidade INT NOT NULL
);

CREATE TABLE Sessoes (
    id_sessao INT AUTO_INCREMENT PRIMARY KEY,
    id_filme INT,
    id_sala INT,
    data_hora DATETIME NOT NULL,
    FOREIGN KEY (id_filme) REFERENCES Filmes(id_filme),
    FOREIGN KEY (id_sala) REFERENCES Salas(id_sala)
);

-- Inserir dados
INSERT INTO Filmes (titulo, genero, duracao) VALUES
('O Poderoso Chefão', 'Crime', 175),
('Matrix', 'Ficção', 136),
('Vingadores', 'Ação', 143),
('O Senhor dos Anéis', 'Fantasia', 201);

INSERT INTO Salas (numero, capacidade) VALUES
(1, 100),
(2, 80),
(3, 120);

INSERT INTO Sessoes (id_filme, id_sala, data_hora) VALUES
(1, 1, '2025-09-05 18:00:00'),
(2, 2, '2025-09-05 20:00:00'),
(3, 3, '2025-09-06 19:00:00'),
(4, 1, '2025-09-06 21:00:00'),
(2, 2, '2025-09-07 18:30:00');
