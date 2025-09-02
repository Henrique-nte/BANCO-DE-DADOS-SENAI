-- Criar banco de dados
CREATE DATABASE escola;
USE escola;

-- Tabelas
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE Cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL
);

CREATE TABLE Matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_curso INT,
    data_matricula DATE NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

-- Inserir dados
INSERT INTO Alunos (nome, data_nascimento) VALUES
('Ana', '2005-03-12'),
('Bruno', '2004-07-23'),
('Carla', '2006-01-30'),
('Diego', '2005-11-05'),
('Eva', '2004-09-17');

INSERT INTO Cursos (nome_curso, carga_horaria) VALUES
('Matemática', 120),
('História', 100),
('Física', 130);

INSERT INTO Matriculas (id_aluno, id_curso, data_matricula) VALUES
(1, 1, '2025-03-01'),
(2, 2, '2025-03-02'),
(3, 3, '2025-03-03'),
(4, 1, '2025-03-04'),
(5, 2, '2025-03-05');
