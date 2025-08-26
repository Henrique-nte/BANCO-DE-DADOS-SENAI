-- =========================
-- TABELA PASSAGEIRO
-- =========================
CREATE TABLE Passageiro (
    id_passageiro INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf CHAR(11) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

-- =========================
-- TABELA BILHETE
-- =========================
CREATE TABLE Bilhete (
    id_bilhete INT PRIMARY KEY AUTO_INCREMENT,
    id_viagem INT NOT NULL,
    id_passageiro INT NOT NULL,
    assento VARCHAR(10) NOT NULL,
    valor DECIMAL(10,2),
    FOREIGN KEY (id_viagem) REFERENCES Viagem(id_viagem),
    FOREIGN KEY (id_passageiro) REFERENCES Passageiro(id_passageiro),
    UNIQUE (id_viagem, assento) -- impede assento duplicado no mesmo ônibus
);

-- =========================
-- TABELA MOTORISTA
-- =========================
CREATE TABLE Motorista (
    id_motorista INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cnh VARCHAR(20) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    data_admissao DATE
);

-- =========================
-- TABELA VEICULO
-- =========================
CREATE TABLE Veiculo (
    id_veiculo INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(10) UNIQUE NOT NULL,
    modelo VARCHAR(50),
    marca VARCHAR(50),
    ano INT,
    capacidade INT NOT NULL
);

-- =========================
-- TABELA ROTA
-- =========================
CREATE TABLE Rota (
    id_rota INT PRIMARY KEY AUTO_INCREMENT,
    origem VARCHAR(100),
    destino VARCHAR(100),
    distancia DECIMAL(10,2),
    duracao_estimada TIME
);

-- =========================
-- TABELA VIAGEM
-- =========================
CREATE TABLE Viagem (
    id_viagem INT PRIMARY KEY AUTO_INCREMENT,
    id_motorista INT NOT NULL,
    id_veiculo INT NOT NULL,
    id_rota INT NOT NULL,
    data_partida DATETIME,
    data_chegada_prevista DATETIME,
    FOREIGN KEY (id_motorista) REFERENCES Motorista(id_motorista),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo),
    FOREIGN KEY (id_rota) REFERENCES Rota(id_rota)
);
