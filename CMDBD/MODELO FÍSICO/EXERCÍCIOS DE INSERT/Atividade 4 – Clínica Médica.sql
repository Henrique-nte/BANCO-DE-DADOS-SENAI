CREATE DATABASE clinica;
USE clinica;

CREATE TABLE Medicos (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50) NOT NULL
);

CREATE TABLE Pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE Consultas (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    id_medico INT,
    id_paciente INT,
    data_consulta DATETIME NOT NULL,
    FOREIGN KEY (id_medico) REFERENCES Medicos(id_medico),
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente)
);

-- Inserir dados
INSERT INTO Medicos (nome, especialidade) VALUES
('Dr. Silva', 'Cardiologia'),
('Dra. Costa', 'Pediatria'),
('Dr. Pereira', 'Dermatologia');

INSERT INTO Pacientes (nome, telefone) VALUES
('Ana', '9999-1111'),
('Bruno', '9999-2222'),
('Carla', '9999-3333'),
('Diego', '9999-4444');

INSERT INTO Consultas (id_medico, id_paciente, data_consulta) VALUES
(1, 1, '2025-09-10 09:00:00'),
(2, 2, '2025-09-10 10:00:00'),
(3, 3, '2025-09-11 11:00:00'),
(1, 4, '2025-09-12 09:30:00'),
(2, 1, '2025-09-12 10:30:00');
