CREATE TABLE Especialidade (
  id_especialidade INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  descricao TEXT
);

CREATE TABLE Medico (
  id_medico INT PRIMARY KEY AUTO_INCREMENT,
  crm VARCHAR(20) UNIQUE NOT NULL,
  nome VARCHAR(100),
  telefone VARCHAR(20),
  email VARCHAR(100),
  id_especialidade INT NOT NULL,
  FOREIGN KEY (id_especialidade) REFERENCES Especialidade(id_especialidade)
);

CREATE TABLE Paciente (
  id_paciente INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  cpf CHAR(11) UNIQUE NOT NULL,
  telefone VARCHAR(20),
  endereco VARCHAR(200),
  data_nascimento DATE
);

CREATE TABLE Consulta (
  id_consulta INT PRIMARY KEY AUTO_INCREMENT,
  id_paciente INT NOT NULL,
  id_medico INT NOT NULL,
  data_hora DATETIME NOT NULL,
  motivo TEXT,
  diagnostico TEXT,
  prescricao TEXT,
  FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente),
  FOREIGN KEY (id_medico) REFERENCES Medico(id_medico)
);